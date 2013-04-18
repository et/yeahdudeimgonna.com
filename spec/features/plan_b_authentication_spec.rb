require 'spec_helper'

feature 'Plan B Authentication' do
  scenario 'Visiting unauthenticated should deny access' do
    visit '/plan_b'
    expect(page.status_code).to equal(403)
  end

  scenario 'Visiting authenticated should grant access' do
    visit '/plan_b'
    expect(page.status_code).to equal(200)
  end
end