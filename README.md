# Dicee 🎲
Игра в кости

![View](/images/сapture.PNG)

## Expanded
*Expanded* resize to fill available space - если картинка большая, ресайзит до макимального размера контейнера. 
Можно использовать только в Row, Column, Flex

## Stateful Widgets
Stateful компоненты могут хранить состояния точно так же как в реакт. Точно так же есть функция *setState*, которая обновляет состояние.
Состоянием могут быть все поля, объявленные в классе. В setState можно напрямую менять значение, необязательно возвращать какое-то значение
Создать новый компонент можно с помощью команды *stful*. Так же можно изменить любой компонент из stateless в stateful и обратно нажав *alt + enter*
```
    class Test extends StatefulWidget {
      @override
      _TestState createState() => _TestState();
    }
    
    class _TestState extends State<Test> {
      @override
      Widget build(BuildContext context) {
        return Container();
      }
    }
```