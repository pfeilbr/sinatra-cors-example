## [Sinatra](http://www.sinatrarb.com/) [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/Access_control_CORS) Example

An example [Sinatra](http://www.sinatrarb.com/) json rest api app showing [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/Access_control_CORS) support by setting the appropriate HTTP headers

## Core Code

Set appropriate headers in before [filter block](http://www.sinatrarb.com/intro.html#Filters)

```ruby
before do
   content_type :json    
   headers 'Access-Control-Allow-Origin' => '*', 
            'Access-Control-Allow-Methods' => ['OPTIONS', 'GET', 'POST', 'PUT'],
            'Access-Control-Allow-Headers' => 'Content-Type'   
end
```

## Running

	bundle install
	foreman start

## Testing

Run the following from a another non-localhost domain

```javascript
$.get('http://localhost:<port>/movie', function(data) {
	console.log(data);
});
```

```javascript
$.post('http://localhost:<port>/movie', {movie: 'The Godfather'}, function(data) {
	console.log(data);
});
```