## Atom – konfiguracja

Większe literki w oknie script i linter oraz w UI.
Dopisujemy w pliku _~/.atom/styles.less_:

```less
@ui-font-size: 16px;

.script-view {
 .panel-body pre {
   background: @tool-panel-background-color;
   color: @text-color;
   font-size: 1.6rem;
 }
 .output {
   font-size: 1.6rem;
 }
 .stderr {
   color: @text-color-error;
   font-size: 1.6rem;
 }
}

linter-message {
  font-size: @ui-font-size;
}

.rspec-console.rspec {
   background-color: white;
   color: black;
   overflow: scroll;
 }
.rspec-console.rspec {
  pre,
  pre div atom-text-editor,
  code,
  tt {
    font-size: @ui-font-size;
    font-family: PT Mono, monospace;
  }
  .rspec-output {
    background: #fff;
    color: #000;
  }
}
```
