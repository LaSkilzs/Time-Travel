require 'rails_helper'

describe 'Jobs CRUD Routes' do
  it 'should route to jobs index' do 
    expect(get '/api/v1/jobs').to route_to('api/v1/jobs#index')
  end

  it 'should route to jobs show' do
    expect(get '/api/v1/jobs/1').to route_to('api/v1/jobs#show', id: '1')
  end

  it 'should route to jobs post' do
    expect(post '/api/v1/jobs').to route_to('api/v1/jobs#create')
  end

  it 'should route to jobs update' do
    expect(put '/api/v1/jobs/1').to route_to('api/v1/jobs#put', id: '1')
  end

  it 'should route to jobs destroy' do
    expect(destroy '/api/v1/jobs/1').to route_to('api/v1/jobs#destroy', id: '1')
  end

end