# Copyright (C) 2007 Joseph Method
# Copyright (C) 2014 Matijs van Zuijlen
#
# Alexandria is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License as
# published by the Free Software Foundation; either version 2 of the
# License, or (at your option) any later version.
#
# Alexandria is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public
# License along with Alexandria; see the file COPYING.  If not,
# write to the Free Software Foundation, Inc., 51 Franklin Street,
# Fifth Floor, Boston, MA 02110-1301 USA.

require File.dirname(__FILE__) + '/../../spec_helper'

# break this up!

describe CellRendererToggle do
  it "should work"
end

describe Gtk::ActionGroup do
  it "should work"
end

describe Gtk::IconView do
  it "should work"
end

describe Alexandria::UI::MainApp do
  before do
    allow(Alexandria::UI::UIManager).to receive(:new).
      and_return(double(Alexandria::UI::UIManager,
                        actiongroup: double(Object), appbar: nil,
                        prefs: nil))
  end
  it "should be a singleton" do
    expect do
      Alexandria::UI::MainApp.new
    end.to raise_error
    # Alexandria::UI::MainApp.instance
  end
end
