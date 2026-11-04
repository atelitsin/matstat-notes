# matstat-notes

Конспект лекций по математической статистике в LaTeX.

📄 **[Скачать свежий PDF](https://github.com/atelitsin/matstat-notes/releases/download/latest/main.pdf)** — собирается автоматически при каждом пуше в `main`.

## Структура

```
main.tex            главный файл: подключает преамбулу и лекции
preamble/
  packages.tex      пакеты (pdfLaTeX + русский язык)
  macros.tex        обозначения: \E, \D, \Pt, \Xbar, \toP, \tod, \Norm, ...
  theorems.tex      окружения theorem / definition / example, keybox
lectures/lecNN.tex  по файлу на лекцию (без преамбулы, начинается с \section)
seminars/           семинары и задачи
figures/            картинки и исходники графиков
latexmkrc           настройки сборки (результат в build/)
```

## Сборка

```bash
latexmk            # собрать build/main.pdf
latexmk -pvc       # пересобирать при каждом сохранении
latexmk -c         # удалить вспомогательные файлы
```

Чтобы быстро собирать только текущую лекцию, раскомментируйте в `main.tex`
строку `\includeonly{lectures/lecNN}`.

## Новая лекция

1. Скопируйте `lectures/lec01.tex` в `lectures/lecNN.tex` и замените содержимое.
2. Добавьте `\include{lectures/lecNN}` в `main.tex`.
3. Коммит: `lecNN: тема лекции`.
