require('./scenes.rb')

class Engine
  # recebe o mapa inicial
  def initialize(map)
    @map = map
  end

  def play
    # armazena a cena inicial em current_scene (uma cena é um Objeto da classe daquela cena)
    current_scene = @map.opening_scene()
    last_scene = @map.next_scene('fim')

    # current_scene é um objeto da cena que está sendo navegada.
    while current_scene != last_scene
      # ao entrar (obj.enter) na sala exibe os puts da mesma e retorna o nome da próxima sala, 
      # baseado na resposta do jogador
      next_scene_name = current_scene.enter
      current_scene = @map.next_scene(next_scene_name)
    end        
  end
end

class Map
  # mapa de cenas
  @@scenes = {
    'start' => Start.new,
    '1' => SceneOne.new,
    '2' => SceneTwo.new,
    '3' => SceneThree.new,
    'fail' => Fail.new
  }

  # primeira cena para iniciar
  def initialize(initial_scene)
    @scene = initial_scene
  end

  # buscar próxima cena na hash de cenas, 
  # a string é a chave o value é o objeto Scene
  def next_scene(scene_name)
    if(scene_name == 'randomize')
      number = rand 1..(@@scenes.length - 2)
      return @@scenes[number.to_s]
    else
      return @@scenes[scene_name]
    end
  end

  # exibe a cena inicial
  def opening_scene
    return next_scene(@scene)
  end
end

a_map = Map.new('start')
a_game = Engine.new(a_map)
a_game.play