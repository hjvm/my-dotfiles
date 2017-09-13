# Orgmode Help

## Cycle visibility of headings (folding)
* `<TAB>` folds/unfolds a heading
* `<S-TAB>` cycles through levels of folds in a tree

## Navigate between headings

* `}` Next heading
* `{` Back heading
* `]]` Next heading same level
* `[[` Back heading same level
* `g{` Backward to higher level heading
* `g}` Forward to higher level heading

Text objects:

* `ih` inner heading
* `ah` heading
* `ir` inner subtree
* `ar` a subtree
* `Oh` inner outer heading
* `Or` inner outer heading including subtree
* `OH` a outer heading
* `OT` outer subtree

## Edit structure

* `<S-CR>` Insert new heading with same level

* `m{` move heading up
* `m}` move heading down
* `m[[` move subree up
* `m]]` move subtree down

* `yah` yank heading
* `dah` delete heading
* `yar` yank subtree
* `dar` delete subtree
* `p` paste subtree

* `>>` or `ah` demote heading
* `<<` or `<ah` promote heading (Doesnt seem to work)
* `<ar` promote subtree
* `>ar` demote subtree

## Hyperlinks

* `gil` to insert link
* `gl` goes to link

## TODO list management

Any headline item becomes a TODO when it starts with the word todo.

* `<LocalLeader> ct` Cycle through TODO state.
* `<LocalLeader> d`  Assign state (x) (so \dd is DONE)

```
: let g:org_todo_keywords = \
[['TODO(t)', 'ASSIGNED(a)', 'WAITING(w)', '|', 'DONE(d)'],\
 ['REPORT(r)', 'BUG(b)', 'KNOWNCAUSE(k)', '|', 'FIXED(f)'],\
 ['CANCELED(c)']]
```

## Tags

They are preceded and followed by `:`
Multiple tags are possible i.e. `:work:urgent:code:`

* `<LocalLeader> st` sets new tags
* `<LocalLeader> ft` find tags


## Lists and checkboxes
* Unordered lists start with `*` or `-` or `+`
* Ordered list starts with `1.` or `1)`
* Description list use `::`
* Checkboxes start with - [ ]
 - `\cc` Toggles checkbox status
 - `\cn` Inserts checkbox underneath
 - `\cN` Inserts checkbox on top

## Basic date handling
`<LocalLeader>sa` inserts timestamp and creates agenda entry
`<LocalLeader>pa` inserts timestamp and creates agenda entry using calendar util.

## Agenda views
You need to set the org agenda files first. I recommend putting all your org files in
a org directory.

Then `let g:org_agenda_files = ['~/org/*.org']`
`<localleader>cat` gives global agenda.
`<localleader>caa` gives global agenda for current week.


## Visual cheatsheet
www.cheatography.com/pweissbrod/cheat-sheets/vim-orgmode/
