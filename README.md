# Lisp JSON over HTTP server for Project Kallisti

This is a simple HTTP server implemented in Common Lisp that takes JSON requests using the POST method
to send a single JSON value, calls a Lisp function on the Lisp version of that value, converts the
return value of that function to JSON and returns it to the caller. It was created for use in the DARPA Project Kallisti,
but likely will have use in other projects, too. Various choices made here are simply best guesses for
what we want, and will undoubtedly evolve as we negotiate the needs of our caller(s). When using this
for other projects it will probably be best to clone it and modify it to taste for those other projects.
It currently uses port 9899, but this can, of course, be easily changed.

This has only been tested in [SBCL](https://www.sbcl.org) both on MacOS on M4 and on Ubuntu Linux on x86-64 but will probably work in other modern Common Lisp
implementations with networking support, such as [LispWorks](https://www.lispworks.com), [Allegro CL](https://franz.com/products/allegro-common-lisp/),
[CCL](https://ccl.clozure.com) and [ABCL](https://www.abcl.org/doc/abcl-user.html), on any supported hardware and OS platform, possibly with some minor tweaks required.


## Installation

* Ensure SCBL and [Quicklisp](https://www.quicklisp.org/beta/) are installed.

* Cone this repo, and `cd` into it.

* Start it by running `./rrun.sh`

* Test that it is working by running, in a different shell, `curl -d @sample-input.json http://localhost/decision`

* This should print something like

    {"actions":
        [{"action_id":"d44cc237-9e09-4cb9-97aa-6f32831df844","probability":1.0},
        {"action_id":"bf93c4cc-6063-458e-afa4-b024f5c9abb6","probability":0.0}]}


## Hooking up a Lisp function to process the JSON
