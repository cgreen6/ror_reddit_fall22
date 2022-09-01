class Api::SubsController < ApplicationController
# controller are traffic directors for data
# define our backend actions,
#fat models skinny controllers = all CRUD actions are in the crontroller and some custom actions as well. Anything else would be in the model.
# # actions - functions you can do in an app
# index - see all objects in the db
# new - form, store in memory
# show - see a single object, pass id
# create - take the info from the form and create in the db
# edit - form, id, store in memory, will do in react
# update - id, take the info from the form to do a n update in the db
# destroy - id, find the object and delete in db.

# on our react on rails app
# index
# show
# create
# update
# destroy

# callbacks - trigger logic doing it before an action or after or skip


# controller should return one of these three things: html, xml, json
# or an action that does.

# all controllers will look similar. convention over configuration
# controllers follow a pattern

#pattern
#to follow the pattern, follow the pluaralization, capital or not
# replace the model name with the actual model name
# def index
#   @model_names = Model_name.all
#   render json: @model_names
#   or
#   render json: Model_name.all
# end

# def show
#   @model_name = Model_name.find(params[:id])
#   render json: @model_name
# # end

# def create
#   @model_name = Model_name.new(model_name_params)

#   if @model_name.save
#     render json: @model_name
#   else
#     #give you an error msg and 422 code
#     render json: { errors: @model_name.errors }, status: : unprocessable
# end

# def update
#   @model_name = Model_name.find(params[:id])

#   if @model_name.update(model_name_params)
# #     render json: @model_name

# def destroy
#   @model_name = Model_name.find(params[:id])
#   @model_name.destroy
#   render json: { message: ' something deleted' }

#   or

# Model_name.find(params[:id])

private
  # #only access with in the class
  # def model_name_params
  #   params.require(:model_name).permit(:attr, :attr2)
  # end

  # controller validation - makes sure that the data coming in is in the right format

  # model name = sub


def index
  render json: Sub.all
end

def show
  @sub = Sub.find(params[:id])
  render json: @sub
end




end
