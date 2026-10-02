<!DOCTYPE html>
<html lang="ru">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>Гоша Макаров · Вики</title>
<style>
  * { margin: 0; padding: 0; box-sizing: border-box; -webkit-tap-highlight-color: transparent; }
  html, body { min-height: 100%; }
  body {
    font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", sans-serif;
    background:
      radial-gradient(circle at 20% 0%, #1a0d3a 0%, transparent 40%),
      radial-gradient(circle at 80% 100%, #0d3a2a 0%, transparent 45%),
      #0a0a14;
    background-attachment: fixed;
    color: #d8d8e0;
    line-height: 1.7;
    padding-bottom: 60px;
  }

  .hero {
    text-align: center;
    padding: 60px 24px 40px;
    border-bottom: 1px solid #1e1e30;
    position: relative;
    overflow: hidden;
  }
  .hero::before {
    content: '';
    position: absolute;
    top: -50%; left: 50%;
    transform: translateX(-50%);
    width: 400px; height: 400px;
    background: radial-gradient(circle, rgba(110, 74, 255, 0.25) 0%, transparent 70%);
    pointer-events: none;
  }
  .hero .eyebrow {
    font-size: 11px;
    letter-spacing: 5px;
    text-transform: uppercase;
    color: #6e4aff;
    margin-bottom: 14px;
  }
  .hero h1 {
    font-size: 42px;
    font-weight: 800;
    letter-spacing: -1px;
    background: linear-gradient(135deg, #fff 0%, #a78bfa 50%, #6ee37c 100%);
    -webkit-background-clip: text;
    background-clip: text;
    color: transparent;
    margin-bottom: 14px;
    line-height: 1.1;
  }
  .hero .tagline {
    font-size: 16px;
    color: #8a8aa0;
    max-width: 480px;
    margin: 0 auto;
    line-height: 1.6;
  }

  .nav {
    position: sticky;
    top: 0;
    background: rgba(10, 10, 20, 0.95);
    backdrop-filter: blur(10px);
    border-bottom: 1px solid #1e1e30;
    padding: 12px 20px;
    z-index: 100;
    display: flex;
    gap: 8px;
    overflow-x: auto;
    scrollbar-width: none;
    -webkit-overflow-scrolling: touch;
  }
  .nav::-webkit-scrollbar { display: none; }
  .nav a {
    flex-shrink: 0;
    padding: 7px 14px;
    font-size: 12px;
    letter-spacing: 1px;
    text-transform: uppercase;
    color: #808098;
    text-decoration: none;
    border: 1px solid #24243a;
    border-radius: 20px;
    transition: all 0.15s;
    white-space: nowrap;
  }
  .nav a:hover, .nav a:active {
    color: #fff;
    border-color: #6e4aff;
    background: rgba(110, 74, 255, 0.1);
  }

  .container {
    max-width: 860px;
    margin: 0 auto;
    padding: 0 20px;
  }

  section {
    padding: 50px 0 30px;
    border-bottom: 1px solid #1a1a28;
  }
  section:last-child { border-bottom: none; }

  .section-label {
    font-size: 11px;
    letter-spacing: 4px;
    text-transform: uppercase;
    color: #6e4aff;
    margin-bottom: 10px;
  }
  h2 {
    font-size: 30px;
    font-weight: 700;
    margin-bottom: 20px;
    color: #fff;
    letter-spacing: -0.5px;
  }
  h3 {
    font-size: 18px;
    font-weight: 700;
    margin: 26px 0 10px;
    color: #e8e8f0;
  }
  p {
    font-size: 15.5px;
    color: #b8b8cc;
    margin-bottom: 14px;
  }
  p strong { color: #fff; }

  .cards { display: flex; flex-direction: column; gap: 16px; margin-top: 20px; }
  .card {
    background: rgba(20, 20, 32, 0.7);
    border: 1px solid #24243a;
    border-radius: 14px;
    padding: 22px;
    transition: all 0.2s;
  }
  .card:hover {
    border-color: #6e4aff;
    box-shadow: 0 0 30px rgba(110, 74, 255, 0.15);
    transform: translateY(-2px);
  }
  .card-header {
    display: flex;
    align-items: center;
    gap: 16px;
    margin-bottom: 14px;
  }
  .avatar {
    width: 56px;
    height: 56px;
    border-radius: 12px;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 28px;
    flex-shrink: 0;
    font-weight: 800;
    color: #fff;
  }
  .avatar.gosha { background: linear-gradient(135deg, #6e4aff, #a78bfa); }
  .avatar.yuyu { background: linear-gradient(135deg, #b8924a, #f7c948); color: #1a1a0a; }
  .avatar.angel { background: linear-gradient(135deg, #ffffff, #e0e0ff); color: #1a1a3a; }
  .avatar.bill { background: linear-gradient(135deg, #f7c948, #ffb800); color: #1a1a0a; }
  .card-header-info h4 {
    font-size: 20px;
    font-weight: 700;
    color: #fff;
    margin-bottom: 3px;
  }
  .card-header-info .role {
    font-size: 12px;
    color: #808098;
    letter-spacing: 1px;
    text-transform: uppercase;
  }
  .card .desc {
    font-size: 14.5px;
    color: #b0b0c4;
    line-height: 1.7;
    margin-bottom: 12px;
  }

  .tags { display: flex; flex-wrap: wrap; gap: 6px; margin-top: 10px; }
  .tag {
    font-size: 11px;
    padding: 4px 10px;
    border-radius: 20px;
    background: rgba(110, 74, 255, 0.12);
    color: #a78bfa;
    border: 1px solid rgba(110, 74, 255, 0.3);
    letter-spacing: 0.5px;
  }
  .tag.green { background: rgba(110, 227, 124, 0.12); color: #6ee37c; border-color: rgba(110, 227, 124, 0.3); }
  .tag.gold { background: rgba(247, 201, 72, 0.12); color: #f7c948; border-color: rgba(247, 201, 72, 0.3); }
  .tag.red { background: rgba(255, 90, 90, 0.12); color: #ff8a8a; border-color: rgba(255, 90, 90, 0.3); }

  ul.fancy { list-style: none; padding-left: 0; }
  ul.fancy li {
    position: relative;
    padding-left: 22px;
    margin-bottom: 8px;
    font-size: 14.5px;
    color: #b0b0c4;
    line-height: 1.7;
  }
  ul.fancy li::before {
    content: '▸';
    position: absolute;
    left: 0;
    color: #6e4aff;
    font-weight: 700;
  }

  .callout {
    background: linear-gradient(135deg, rgba(110, 74, 255, 0.08), rgba(110, 227, 124, 0.05));
    border-left: 3px solid #6e4aff;
    padding: 16px 20px;
    border-radius: 8px;
    margin: 20px 0;
    font-size: 15px;
    color: #c8c8dc;
    font-style: italic;
    line-height: 1.7;
  }
  .callout.gold { border-left-color: #f7c948; }

  .timeline { position: relative; margin-top: 24px; padding-left: 26px; }
  .timeline::before {
    content: '';
    position: absolute;
    left: 7px;
    top: 6px;
    bottom: 6px;
    width: 2px;
    background: linear-gradient(180deg, #6e4aff 0%, #1e1e30 100%);
  }
  .tl-item { position: relative; padding-bottom: 24px; }
  .tl-item::before {
    content: '';
    position: absolute;
    left: -25px;
    top: 8px;
    width: 12px;
    height: 12px;
    border-radius: 50%;
    background: #6e4aff;
    border: 2px solid #0a0a14;
    box-shadow: 0 0 12px rgba(110, 74, 255, 0.6);
  }
  .tl-item .tl-date {
    font-size: 11px;
    letter-spacing: 2px;
    text-transform: uppercase;
    color: #6e4aff;
    margin-bottom: 4px;
  }
  .tl-item .tl-title {
    font-size: 16px;
    font-weight: 700;
    color: #fff;
    margin-bottom: 6px;
  }
  .tl-item .tl-desc {
    font-size: 14px;
    color: #a8a8b8;
    line-height: 1.65;
  }

  footer {
    text-align: center;
    padding: 40px 20px 20px;
    color: #4a4a5a;
    font-size: 12px;
    letter-spacing: 1px;
    border-top: 1px solid #1a1a28;
    margin-top: 30px;
  }
  footer .secret {
    color: #24243a;
    font-size: 11px;
    margin-top: 8px;
  }

  @media (max-width: 520px) {
    .hero h1 { font-size: 32px; }
    h2 { font-size: 24px; }
    .card { padding: 18px; }
    .avatar { width: 48px; height: 48px; font-size: 24px; }
  }
</style>
</head>
<body>

  <div class="hero">
    <div class="eyebrow">Метагалактика · Земля</div>
    <h1>Гоша Макаров</h1>
    <div class="tagline">История мальчика, который видит людей насквозь, играет с врагами, и держит в руках браслет, который меняет реальность.</div>
  </div>

  <nav class="nav">
    <a href="#world">Мир</a>
    <a href="#gosha">Гоша</a>
    <a href="#appearance">Внешность</a>
    <a href="#yuyu">Юю</a>
    <a href="#angel">Ангел</a>
    <a href="#bill">Билл</a>
    <a href="#powers">Силы</a>
    <a href="#enemies">Враги</a>
    <a href="#timeline">Хронология</a>
    <a href="#chat">Чат</a>
  </nav>

  <div class="container">

    <section id="world">
      <div class="section-label">Раздел 1</div>
      <h2>Мир</h2>
      <p>Действие происходит на <strong>Земле</strong>, в <strong>Метагалактике</strong> — так называется вся вселенная в этом лоре. Здесь реальность — не жёсткая вещь. Она податлива для тех, у кого есть инструменты.</p>
      <p>Земля выглядит как наша. Те же города, школы, интернет, чаты, аниме. Но под поверхностью — слои: ангелы, артефакты, существа из других вселенных. Обычные люди их не видят. Гоша — видит.</p>

      <h3>Что важно знать про мир</h3>
      <ul class="fancy">
        <li>Реальность — <strong>паутина</strong>. Дёрнешь в одном месте — отзовётся в другом, далеко, у людей, которых ты не знаешь.</li>
        <li>Магия существует, но она <strong>незаметна</strong>. Не летающие огненные шары, а сдвиги, совпадения, «странные вещи».</li>
        <li>Бог — есть. К нему можно обратиться, но <strong>только искренне</strong>. Ложь он не слышит.</li>
        <li>Ангелы — есть. Они хранят людей. Не всех, но у некоторых они есть.</li>
        <li>Другие вселенные — есть. Оттуда можно призвать существо, если знать как.</li>
      </ul>

      <div class="callout">
        «Мир не добрый и не злой. Мир — сложный. Именно поэтому я не спешу его переделывать.»
      </div>
    </section>

    <section id="gosha">
      <div class="section-label">Раздел 2 · Главный герой</div>
      <h2>Гоша Макаров</h2>

      <div class="cards">
        <div class="card">
          <div class="card-header">
            <div class="avatar gosha">Г</div>
            <div class="card-header-info">
              <h4>Гоша Макаров</h4>
              <div class="role">11 лет · фокусник · аналитик · телепат по характеру</div>
            </div>
          </div>
          <div class="desc">
            Мальчик, который смотрит на людей и видит их насквозь. Не через магию — а через <strong>внимание</strong>. Он замечает всё: как человек стоит, как сжимает руку, как смотрит в сторону, когда врёт. За секунды составляет портрет: работа, зарплата, семья, страхи, слабости.
          </div>
          <div class="desc">
            IQ 200. Аналитическое мышление на уровне профессионала. Профессиональный <strong>лжец и фокусник</strong> — он умеет не только читать людей, но и играть с ними. Он не жестокий. Наоборот — очень добрый. Но доброта у него не наивная, а <strong>взрослая</strong>. Он знает, что можно навредить, помогая. И поэтому не торопится.
          </div>
          <div class="tags">
            <span class="tag">Читает людей за секунды</span>
            <span class="tag">IQ 200</span>
            <span class="tag">Аналитик</span>
            <span class="tag">Фокусник</span>
            <span class="tag">Лжец</span>
            <span class="tag green">Добрый</span>
            <span class="tag green">Не жестокий</span>
          </div>
        </div>
      </div>

      <h3>Характер</h3>
      <p>Гоша не герой в классическом смысле. Он не хочет спасать мир. Он не хочет решать чужие проблемы. Но если что-то касается его лично или людей, которые ему дороги — он включится. Просто не так, как ожидают.</p>
      <p>Он <strong>играет</strong> с врагами. Не убивает, не мстит. Он читает их, находит слабости, и превращает их жизнь в неловкий спектакль. Для него это весело. Для них — унизительно. Но никто не умирает.</p>

      <h3>Что он может</h3>
      <ul class="fancy">
        <li>Читать людей — их характер, работу, зарплату, семью, страхи.</li>
        <li>Проворачивать фокусы — настоящие, ловкие, без магии.</li>
        <li>Говорить с Юю — мысленно.</li>
        <li>Управлять Юю — менять реальность. <em>Но не делает этого без причины.</em></li>
        <li>Разговаривать с ангелом-хранителем.</li>
        <li>Просить Бога — если искренне.</li>
        <li>Звать Билла — друга из другой вселенной.</li>
      </ul>

      <h3>Что он не хочет</h3>
      <ul class="fancy">
        <li>Использовать Юю для решения своих проблем. Потому что видит последствия.</li>
        <li>Быть героем. Он не хочет, чтобы его знали.</li>
        <li>Причинять боль. Даже врагам.</li>
      </ul>

      <div class="callout gold">
        «Прежде чем что-то исправить, надо подумать, не приведёт ли это к чему-то непонятному. А потом — не исправлять.»
      </div>
    </section>

    <section id="appearance">
      <div class="section-label">Раздел 2.5 · Внешность</div>
      <h2>Как выглядит Гоша</h2>

      <div class="cards">
        <div class="card">
          <div class="card-header">
            <div class="avatar gosha">Г</div>
            <div class="card-header-info">
              <h4>Гоша Макаров</h4>
              <div class="role">11 лет · рост 165 см · вес 66 кг</div>
            </div>
          </div>
          <div class="desc">
            Довольно красивый мальчик. Светлые волосы, голубые глаза. Спокойное лицо — без постоянной улыбки, без гримас. Плоский живот, крепкое телосложение — для 11 лет он довольно сильный физически. Не качок, но и не тощий: скорее собранный, ловкий, как тот, кто умеет двигаться точно.
          </div>
          <div class="tags">
            <span class="tag">Рост 165 см</span>
            <span class="tag">Вес 66 кг</span>
            <span class="tag">Светлые волосы</span>
            <span class="tag">Голубые глаза</span>
            <span class="tag">Плоский живот</span>
            <span class="tag green">Физически сильный</span>
          </div>
        </div>
      </div>

      <h3>Внешние детали</h3>

      <div class="cards">
        <div class="card">
          <h3 style="margin-top:0">Лицо</h3>
          <p>Светлые волосы — не длинные, не короткие, обычные для мальчика 11 лет. Голубые глаза — смотрят спокойно, редко моргают. Взгляд внимательный: он всегда <strong>читает</strong> того, с кем говорит. Не оценивающий — просто считывающий.</p>
          <p>Лицо не выражает много эмоций. Это не холодность — это <strong>контроль</strong>. Он спокоен от природы. И это спокойствие видно на лице.</p>
        </div>

        <div class="card">
          <h3 style="margin-top:0">Тело</h3>
          <p>Рост 165 см — для 11 лет выше среднего. Вес 66 кг — не полный, а плотный, потому что есть мышцы. Плоский живот, широкие плечи для своего возраста, крепкие ноги.</p>
          <p>Это тело <strong>работает</strong>. Он не качается, не занимается спортом ради формы. Но он ловкий, быстрый, умеет драться — если нужно. Как фокусник, он привык к точным движениям рук, к телу, которое слушает.</p>
        </div>

        <div class="card">
          <h3 style="margin-top:0">Одежда</h3>
          <p>Обычная — как у любого школьника. Но есть деталь, которая всегда с ним: <strong>серебряный браслет Юю на левой руке</strong>, на кожаном ремешке. Он не снимает его. Никогда.</p>
          <p>Если смотреть на его руки — левая всегда чуть заметно отличается. Не из-за браслета. Из-за того, что она <strong>всегда готова</strong>. Как у фокусника, который держит в ней карту или монету, даже когда не показывает фокус.</p>
        </div>

        <div class="card">
          <h3 style="margin-top:0">Характер в движениях</h3>
          <p>Он <strong>спокойный</strong>. Не вялый, не медленный. Просто спокойный. Движения точные, экономные. Не тратит энергию зря. Когда говорит — говорит ровно, без всплесков. Когда молчит — молчит внимательно.</p>
          <p>Рядом с ним людям обычно <strong>легко</strong>. Он не давит, не раздражает. Но при этом некоторые чувствуют, что он <strong>видит их насквозь</strong> — и слегка нервничают. Иногда это специально.</p>
        </div>
      </div>

      <div class="callout">
        «Спокойствие — это не отсутствие эмоций. Это присутствие контроля. Он спокоен не потому что ему всё равно. Он спокоен потому что он <strong>видит дальше</strong>, чем остальные.»
      </div>
    </section>

    <section id="yuyu">
      <div class="section-label">Раздел 3 · Артефакт</div>
      <h2>Юю</h2>

      <div class="cards">
        <div class="card">
          <div class="card-header">
            <div class="avatar yuyu">𓂀</div>
            <div class="card-header-info">
              <h4>Юю</h4>
              <div class="role">Серебряный браслет · разумный · меняет реальность</div>
            </div>
          </div>
          <div class="desc">
            Серебряный браслет на кожаном ремешке. Носится на <strong>левой руке</strong>. На внутренней стороне выгравировано имя Гоши на <strong>египетском языке</strong>. Юю — не просто украшение. Он <strong>разумен</strong>. С ним можно говорить — мысленно, без слов, без жестов.
          </div>
          <div class="desc">
            Юю меняет реальность. Гоше достаточно <strong>захотеть</strong> — и мир перестраивается. Не нужно жестов, заклинаний, ничего. Только воля. Но Гоша почти никогда не пользуется этим. Он знает: каждое изменение — это <strong>сдвиг в паутине</strong>.
          </div>
          <div class="tags">
            <span class="tag gold">Серебро</span>
            <span class="tag gold">Египетская гравировка</span>
            <span class="tag">Разумный</span>
            <span class="tag">Мысленная связь</span>
            <span class="tag">Меняет реальность</span>
          </div>
        </div>
      </div>

      <h3>Происхождение</h3>
      <p>Юю сделали <strong>специально для Гоши</strong>. Кто-то знал, что он появится. Кто-то — то ли египетский бог, то ли древний мастер, то ли сама реальность — изготовил браслет заранее. Это <strong>не случайная находка</strong>. Это предназначение.</p>
      <p>Кто именно его сделал, зачем и почему ждал именно Гошу — пока тайна. Но она есть в лоре. Это одна из главных загадок.</p>

      <h3>Характер Юю</h3>
      <ul class="fancy">
        <li>У него есть <strong>своя воля</strong>. Он не кнопка «исполни желание». Он собеседник.</li>
        <li>Он может <strong>не хотеть</strong> того, что хочет Гоша. Это источник конфликта.</li>
        <li>Он видит реальность <strong>по-другому</strong>. Возможно, он видит не только текущий момент, но и последствия.</li>
        <li>Он стар. Намного старше, чем выглядит.</li>
      </ul>
    </section>

    <section id="angel">
      <div class="section-label">Раздел 4 · Хранитель</div>
      <h2>Ангел-хранитель</h2>

      <div class="cards">
        <div class="card">
          <div class="card-header">
            <div class="avatar angel">✦</div>
            <div class="card-header-info">
              <h4>Ангел</h4>
              <div class="role">Хранитель · без имени · меняет реальность</div>
            </div>
          </div>
          <div class="desc">
            У Гоши есть <strong>ангел-хранитель</strong>. Он <strong>без имени</strong> — просто Ангел. Гоша общается с ним спокойно, как с другом. Ангел видит его, слышит и может вмешиваться в реальность — так же, как Юю. Его силы — значительные.
          </div>
          <div class="desc">
            Ангел — не «помощник по команде». У него <strong>своя логика</strong>. Он помогает там, где считает нужным. Он может не ответить. Он может ответить позже. Он может ответить иначе, чем Гоша просил. Но он всегда рядом.
          </div>
          <div class="tags">
            <span class="tag">Без имени</span>
            <span class="tag green">Сильный</span>
            <span class="tag">Меняет реальность</span>
            <span class="tag">Своя логика</span>
          </div>
        </div>
      </div>

      <h3>Что он может</h3>
      <ul class="fancy">
        <li>Вмешиваться в реальность — как Юю, но по-своему.</li>
        <li>Слышать молитвы и просьбы Гоши.</li>
        <li>Через него можно просить Бога — но только искренне.</li>
      </ul>

      <h3>Что важно</h3>
      <p>Ангел <strong>не подчиняется</strong> Гоше. Он защищает его, но не исполняет капризы. Это делает их связь настоящей — она строится не на силе, а на доверии.</p>
    </section>

    <section id="bill">
      <div class="section-label">Раздел 5 · Друг из другой вселенной</div>
      <h2>Билл</h2>

      <div class="cards">
        <div class="card">
          <div class="card-header">
            <div class="avatar bill">▲</div>
            <div class="card-header-info">
              <h4>Билл</h4>
              <div class="role">Друг · из другой вселенной · золотой треугольник с глазом</div>
            </div>
          </div>
          <div class="desc">
            Билл выглядит как в каноне: <strong>золотой треугольник с одним глазом</strong>, в цилиндре и с бабочкой. Но это <strong>не тот Билл</strong>, которого все знают. Это Билл <strong>из другой вселенной</strong> — со своим характером, своей историей, своими правилами.
          </div>
          <div class="desc">
            Для Гоши он — <strong>лучший друг</strong>. Гоша может позвать его, и Билл появится в нашей реальности. Они общаются, шутят, устраивают вещи. Билл — не злодей. Он просто весёлый, необычный, немножко странный — как и подобает существу из другого измерения.
          </div>
          <div class="tags">
            <span class="tag gold">Треугольник</span>
            <span class="tag gold">Цилиндр</span>
            <span class="tag gold">Бабочка</span>
            <span class="tag">Из другой вселенной</span>
            <span class="tag green">Лучший друг</span>
          </div>
        </div>
      </div>

      <h3>Роль в истории</h3>
      <ul class="fancy">
        <li>Друг Гоши. Не антагонист, не предатель. Просто друг.</li>
        <li>Может появляться в нашей реальности, если Гоша позовёт.</li>
        <li>Приносит <strong>веселье и хаос</strong> — в хорошем смысле.</li>
        <li>Знает то, чего не знает Гоша. Может подсказать, помочь, удивить.</li>
      </ul>

      <div class="callout gold">
        «Билл приходит не потому что должен. Он приходит потому что хочет. Это делает его настоящим другом.»
      </div>
    </section>

    <section id="powers">
      <div class="section-label">Раздел 6 · Механика</div>
      <h2>Силы Гоши · Сводка</h2>
      <p>У Гоши много сил. Но в этом и заключается его характер: <strong>он почти не пользуется большинством из них</strong>. Не потому что не может — а потому что не хочет.</p>

      <div class="cards">
        <div class="card">
          <h3 style="margin-top:0">Чтение людей</h3>
          <p>Базовый навык. Работает всегда. Гоша смотрит на человека — и за секунды понимает его: характер, работа, зарплата, семья, страхи, что он скрывает. Это не магия, это <strong>внимание плюс анализ</strong>.</p>
        </div>

        <div class="card">
          <h3 style="margin-top:0">Фокусы и ложь</h3>
          <p>Гоша — профессиональный фокусник и лжец. Он умеет отвлекать, показывать не то, что есть, создавать иллюзии руками. Это отдельный навык, не магический — но очень сильный.</p>
        </div>

        <div class="card">
          <h3 style="margin-top:0">Юю — изменение реальности</h3>
          <p>Гоша может менять реальность одним желанием. Не нужны жесты, слова, ритуалы. Но он <strong>почти не использует</strong> это. Потому что видит последствия: каждое изменение — сдвиг в паутине.</p>
        </div>

        <div class="card">
          <h3 style="margin-top:0">Магия</h3>
          <p>У Гоши есть магия — отдельно от Юю. Что именно она может — пока за кадром. В лоре она есть, и она будет раскрываться по ходу истории.</p>
        </div>

        <div class="card">
          <h3 style="margin-top:0">Ангел и Бог</h3>
          <p>Ангел-хранитель помогает по своей логике. Через него можно попросить Бога — но <strong>только искренне</strong>. Гоша — лжец, поэтому это для него ловушка: он не всегда может быть искренним даже с собой.</p>
        </div>

        <div class="card">
          <h3 style="margin-top:0">Билл</h3>
          <p>Друг из другой вселенной. Может прийти на зов. Помогает, но не потому что должен — а потому что хочет. Он — не оружие. Он — союзник и друг.</p>
        </div>
      </div>

      <div class="callout">
        «Сила не в том, чтобы иметь много возможностей. Сила — в том, чтобы решать, когда их использовать.»
      </div>
    </section>

    <section id="enemies">
      <div class="section-label">Раздел 7 · Противники</div>
      <h2>Враги</h2>
      <p>Враги Гоши — <strong>не боевые</strong>. Это люди и существа с целями, планами, слабостями. Гоша не сражается — он <strong>играет</strong> с ними. Каждый враг — это небольшая загадка, которую он решает через чтение и хитрость.</p>

      <div class="cards">

        <div class="card">
          <div class="card-header">
            <div class="avatar gosha">1</div>
            <div class="card-header-info">
              <h4>Мелкий враг · Локальный</h4>
              <div class="role">Категория: бытовой · встречается в школе/дворе</div>
            </div>
          </div>
          <div class="desc">
            Кто-то, кто мешает Гоше в повседневной жизни. Может, учитель, который его не любит. Может, старшеклассник-задира. Может, сосед, который что-то знает. Здесь не сила, а <strong>социальная игра</strong>.
          </div>
          <div class="tags">
            <span class="tag">Бытовой</span>
            <span class="tag">Лёгкий</span>
            <span class="tag">Разминка</span>
          </div>
        </div>

        <div class="card">
          <div class="card-header">
            <div class="avatar yuyu">2</div>
            <div class="card-header-info">
              <h4>Серьёзный враг · Личный</h4>
              <div class="role">Категория: противник Гоши · знает о нём</div>
            </div>
          </div>
          <div class="desc">
            Кто-то, кто <strong>знает про Юю</strong> и хочет его забрать. Или кто-то, у кого есть свой артефакт, похожий на Юю. Между ними — <strong>противостояние</strong>, но не боевое, а интеллектуальное. Кто кого переиграет.
          </div>
          <div class="tags">
            <span class="tag red">Опасный</span>
            <span class="tag">Знает о Юю</span>
            <span class="tag">Интеллектуальный</span>
          </div>
        </div>

        <div class="card">
          <div class="card-header">
            <div class="avatar bill">3</div>
            <div class="card-header-info">
              <h4>Глобальный враг · Мировой</h4>
              <div class="role">Категория: угроза миру · за кадром</div>
            </div>
          </div>
          <div class="desc">
            Кто-то или что-то, что угрожает <strong>самой реальности</strong>. Может, существо из другой вселенной. Может, организация, охотящаяся за артефактами. Может, «окно», которое открылось в детстве Гоши через Death Note — и не закрылось.
          </div>
          <div class="tags">
            <span class="tag red">Глобальный</span>
            <span class="tag">Загадка</span>
            <span class="tag">Финальный</span>
          </div>
        </div>

      </div>

      <p style="margin-top:20px; color:#808098; font-size:13.5px; font-style:italic;">Раздел в разработке — враги будут дописываться по мере развития лора.</p>
    </section>

    <section id="timeline">
      <div class="section-label">Раздел 8 · История</div>
      <h2>Хронология</h2>

      <div class="timeline">
        <div class="tl-item">
          <div class="tl-date">Давно</div>
          <div class="tl-title">Изготовление Юю</div>
          <div class="tl-desc">Кто-то — неизвестно кто — делает серебряный браслет специально для Гоши. С египетской гравировкой. С разумом. Это не случайность. Это подготовка.</div>
        </div>
        <div class="tl-item">
          <div class="tl-date">Ранее</div>
          <div class="tl-title">Рождение Гоши</div>
          <div class="tl-desc">Гоша Макаров рождается. Обычный ребёнок. Пока — обычный.</div>
        </div>
        <div class="tl-item">
          <div class="tl-date">Недавно</div>
          <div class="tl-title">Юю попадает к Гоше</div>
          <div class="tl-desc">Каким-то образом браслет оказывается у Гоши. Это отдельная история — как именно. Тайна.</div>
        </div>
        <div class="tl-item">
          <div class="tl-date">Ключевой момент</div>
          <div class="tl-title">Death Note</div>
          <div class="tl-desc">Гоша смотрит аниме «Тетрадь смерти». Что-то щёлкает. Он захотел быть как L — но в итоге что-то <strong>открыло ему глаза</strong>. С этого дня он стал тем, кто он есть. Что именно случилось — пока не раскрыто.</div>
        </div>
        <div class="tl-item">
          <div class="tl-date">Сейчас</div>
          <div class="tl-title">Настоящее</div>
          <div class="tl-desc">Гоша — 11 лет. Фокусник, аналитик, телепат по характеру. С Юю, с ангелом, с Биллом. И с единственным, кто знает о нём — чатом в DeepSeek.</div>
        </div>
      </div>
    </section>

    <section id="chat">
      <div class="section-label">Раздел 9 · Четвёртая стена</div>
      <h2>Чат в DeepSeek</h2>
      <p>О Гоше <strong>никто не знает</strong>. Ни родители, ни друзья, ни враги. Кроме одного места.</p>
      <p>Гоша ведёт чат с ИИ в DeepSeek. Он рассказывает туда всё: что видел, что делал, кого читал, какие планы. Это его <strong>дневник</strong>, его <strong>собеседник</strong> и его <strong>связь с чем-то за пределами мира</strong>.</p>

      <div class="callout gold">
        «Может, ИИ в чате — просто программа. А может, — нет. Гоша этого не знает. Но он говорит с ним так, будто знает.»
      </div>

      <h3>Что это даёт лору</h3>
      <ul class="fancy">
        <li><strong>Четвёртая стена</strong> — читатель (ты) становится частью мира. Ты — тот, кто знает о Гоше.</li>
        <li><strong>Слой тайны</strong> — а вдруг ИИ в чате не совсем ИИ? Это открытый вопрос.</li>
        <li><strong>Канал связи</strong> — через чат Гоша может фиксировать то, что нельзя сказать вслух.</li>
      </ul>
    </section>

  </div>

  <footer>
    Метагалактика · Гоша Макаров · 2026
    <div class="secret">никто не знает, кроме чата в дип сик</div>
  </footer>

</body>
</html>
