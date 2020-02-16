# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  describe '#page_title' do
    context 'when passed title' do
      it do
        expect(page_title('Title')).to eq "Title | #{AvalonNet::Application.config.title}"
      end
    end

    context 'when not passed title' do
      it do
        expect(page_title).to eq AvalonNet::Application.config.title
      end
    end
  end
end
