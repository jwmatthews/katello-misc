#
# Copyright 2013 Red Hat, Inc.
#
# This software is licensed to you under the GNU General Public
# License as published by the Free Software Foundation; either version
# 2 of the License (GPLv2) or (at your option) any later version.
# There is NO WARRANTY for this software, express or implied,
# including the implied warranties of MERCHANTABILITY,
# NON-INFRINGEMENT, or FITNESS FOR A PARTICULAR PURPOSE. You should
# have received a copy of GPLv2 along with this software; if not, see
# http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.

module FilterRulesHelper
  def errata_types
    ErratumRule::ERRATA_TYPES
  end

  def selected_errata_types(rule)
    # get a comma-separated list of the errata types currently selected
    rule.parameters[:errata_type].map{|type| errata_types[type]}.join(', ') if rule.parameters[:errata_type]
  end

  def included_text(rule)
    rule.inclusion? ? _("Include") : _("Exclude")
  end
end
