# Introduction to Numerical Relativity

Materials used to deliver the (optional) undergrad course *Introduction to Numerical Relativity* at IFA-UV.

## Course website
The [website](https://crisbh.github.io/numerical-relativity-intro/slides/) with the slides is deployed via github actions. The build action will be triggered automatically by commits to `main` 

The source slides (in Markdown) are found under `slides/`. These are converted into html using `marp`. If a new slide is added, this has to be listed in `content/slides/_index.md` in order for this to appear visible.

## Local website visualisation
If needed, the website can be updated and visualised locally by invoking `make all`. This will:
- Run `make slides` to compile the html slides. 
- Run `make site`. This will deploy the hugo website to `public` and host the website in localhost.
