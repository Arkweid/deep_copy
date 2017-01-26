```ruby
rails db:seed
```

## Запуск сервисной функции копирования:
```ruby
CourseCopyService.new(1)
```

## Запуск сервисной функции в фоне:
```ruby
CourseCopyWorker.perform_async(1)
```
