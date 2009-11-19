#!/usr/bin/perl -w
use strict;

use RT::Test strict => 1; use Test::More tests => 15;

use constant ImageRoot => RT->static_path . '/images';
use constant LogoFile => ImageRoot .'/bplogo.gif';
use constant FaviconFile => ImageRoot .'/favicon.png';

my ($baseurl, $m) = RT::Test->started_ok;
ok $m->login, 'logged in';
my $queue = RT::Model::Queue->new(current_user => RT->nobody);
my $qid = $queue->load('General');
ok( $qid, "Loaded General queue" );

$m->form_name('create_ticket_in_queue');
$m->field('queue', $qid);
$m->submit;
is($m->status, 200, "request successful");
$m->content_like(qr/Create a new ticket/, 'ticket create page');
$m->fill_in_action_ok('create_ticket', (
    subject     => 'Attachments test',
    attachments => LogoFile,
    content     => 'Some content',
));
$m->submit;
is($m->status, 200, "request successful");

$m->content_like(qr/Attachments test/, 'we have subject on the page');
$m->content_like(qr/Some content/, 'and content');
$m->content_like(qr/Download bplogo\.gif/, 'page has file name');
$m->follow_link_ok(text => 'Reply');
$m->form_name('ticket_update');
$m->field('attach',  LogoFile);
$m->click('add_more_attach');
is($m->status, 200, "request successful");

$m->form_name('ticket_update');
$m->field('attach',  FaviconFile);
$m->field('update_content', 'Message');
$m->click('submit_ticket');
is($m->status, 200, "request successful");

$m->content_like(qr/Download bplogo\.gif/, 'page has file name');
$m->content_like(qr/Download favicon\.png/, 'page has file name');

