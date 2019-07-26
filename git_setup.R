# Set up user.name and user.email ----

if(!is.null(attr(system('git config --global user.name',intern=T),'status'))){
  .username <- readline('Please type in the user name you want to use and hit enter: ');
  system(sprintf('git config --global user.name "%s"',.username));
}

if(!is.null(attr(system('git config --global user.email',intern=T),'status'))){
  .useremail <- readline('Please type in the email address you want to use and hit enter: ');
  system(sprintf('git config --global user.email "%s"',.useremail));
}

# Set up useful aliases ----
system('git config --global alias.upd "submodule update --init --recursive --remote"');
system('git config --global alias.lg "log --oneline --graph --color --all --decorate"');
c()