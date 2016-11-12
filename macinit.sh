ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install git
brew install npm
brew install caskroom/cask/brew-cask
brew install reattach-to-user-namespace
brew cask install google-chrome
brew cask install brackets
brew cask install spectacle
brew cask install iterm2-nightly
brew cask install chrome-devtools
brew cask install xquartz
brew install hg
brew install thefuck
brew install bash-completion
#allow ntfs mount
brew cask install osxfuse
brew install homebrew/fuse/ntfs-3g
sudo mv /sbin/mount_ntfs /sbin/mount_ntfs.original 
sudo ln -s /usr/local/sbin/mount_ntfs /sbin/mount_ntfs

brew install ctags
brew install Caskroom/cask/kaleidoscope

brew install python
python ./get-pip.py
pip install --upgrade pip setuptools
brew install socat
pip install psutil
pip install mercurial
pip install pygit2
pip install cffi
brew install libgit2
pip install pygit2
pip install bzr
pip install pyuv
pip install powerline-status

./init.sh

git clone git@github.com:powerline/fonts.git ~/powerline-fonts
(cd ~/powerline-fonts && ./install.sh)

################## general system settings  ################################
## pulled from https://github.com/mathiasbynens/dotfiles/blob/master/.osx ##

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Disable transparency in the menu bar and elsewhere on Yosemite
defaults write com.apple.universalaccess reduceTransparency -bool true

# Always show scrollbars
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"
# Possible values: `WhenScrolling`, `Automatic` and `Always`

# Disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Trackpad: map bottom right corner to right-click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true
defaults -currentHost write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 1
defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true

# Finder: disable window animations and Get Info animations
defaults write com.apple.finder DisableAllAnimations -bool true

# Show icons for hard drives, servers, and removable media on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Show the ~/Library folder
chflags nohidden ~/Library

#copy powerline config into proper location
cp ./powerline-config.json /usr/local/lib/python2.7/site-packages/powerline/config_files/config.json

echo "Install complete - don't forget to set your terminal fonts to be powerline compatable"

