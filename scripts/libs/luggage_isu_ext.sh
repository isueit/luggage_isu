#!/bin/sh

# Assumptions:
# ===========
# - Drush 5.9 or greater
# - Git 1.8.5.2 or greater
# - Execution from a shell in the webroot directory.
#
# git clone git@github.com:isubit/luggage_isu.git
# cd luggage_isu
# ./scripts/build_luggage_isu.sh
#

ALIAS="@self"

install_luggage_isu_suitcase() {
  # Install Theme - Suitcase
  drush $ALIAS en -y suitcase
}

install_luggage_isu_suitcase_ext() {
  # Install Theme - Suitcase_ext
  drush $ALIAS en -y suitcase_ext
  drush $ALIAS vset theme_default suitcase_ext
}

install_luggage_isu_features() {
  # Install luggage_isu features
  drush -v $ALIAS en -y luggage_pubcookie luggage_people_isu
  drush -v $ALIAS en -y suitcase_config
}