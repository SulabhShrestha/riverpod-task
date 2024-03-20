# EverestWalk Task

## Folder structure

This task follows the standard MVVM architecture + services, where the main layers are: `views`, `view_model`, `model` and `services` and other folders includes: `utils`, `providers` and `routing`.

* `providers`: This layer contains the state management code of *riverpod*. This acts as a mediator between `views` and `data` layers.

* `model`: This layer contains the custom user defined data type. In our case, `PhotosModel`, `PostModel`, `TodoModel`.

* `views`: This layer contains all the visual parts that the user can see in his device. In our case, it contains *home_page*, *photos_page*, *posts_page*, *search_page*  and *todos_page*, and each screen might have dedicated widgets requried, which is kept inside respective screen folder. If two screens uses same widget, then we shall keep it inside of *core_widgets* folder.

* `respository`: This layer is responsible for translating the raw data obtained to model and returning it, handle exception and validate the data before sending to the `data_provider` layer. Basically it's a controller that acts as a layer between bloc layer and data layer.

* `services`: This layer is used to interact with services such as notification, bluetooth, GPS, web server etc, in our case, it is used for interacting with *web server*.

* `routing`: This layer contains the information about the routes, and is used for navigation using *go_router*.

* `utils`: This layer contains the constant files, *urls_constant* in our case.

## Packages used

* `freezed`: For creating models hassle-free, without having the need to write tons of boilerplate for creating simple model.

* `json_serializable`: For creating *fromJSON* and *toJSON* factory method.

* `flutter_riverpod`: For managing global states accross the app.

* `go_router`: For efficiently navigating to the other page.

* `dio`: Better way of fetching data from the web compared to *http* package.

## Videos

<video width="320" height="240" controls>
  <source src="videos/photos.mp4" type="video/mp4">
</video>

<video width="320" height="240" controls>
  <source src="videos/posts.mp4" type="video/mp4">
</video>

<video width="320" height="240" controls>
  <source src="videos/Todo.mp4" type="video/mp4">
</video>
