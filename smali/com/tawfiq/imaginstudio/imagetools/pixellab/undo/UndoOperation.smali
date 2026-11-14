.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/UndoOperation;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getComponentType(Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;
    .locals 1

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->bg_action:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->bg:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    return-object p0

    :cond_0
    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->text_action:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    if-eq p0, v0, :cond_3

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->text_create:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    if-eq p0, v0, :cond_3

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->text_delete:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->shape_action:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->shape_create:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->shape_delete:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    if-ne p0, v0, :cond_4

    :cond_2
    sget-object p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    return-object p0

    :cond_3
    :goto_0
    sget-object p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    return-object p0

    :cond_4
    sget-object p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->unspecified:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    return-object p0
.end method

.method public static redo(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 10

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->endGrouping()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->hasRedo()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "\u0644\u0627 \u064a\u0648\u062c\u062f \u062a\u0642\u062f\u0645 \u0645\u062a\u0628\u0642\u064d"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->isOptionExpandOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->redoLast()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_a

    const-string v3, "histType"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    if-eqz v3, :cond_9

    const-string v4, "histRef"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "histRedoData"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v5, "histData"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    :cond_2
    invoke-static {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/UndoOperation;->getComponentType(Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    move-result-object v6

    sget-object v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->bg:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne v6, v7, :cond_3

    if-eqz v5, :cond_9

    invoke-virtual {p0, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->recreatePreviewBg(Landroid/os/Bundle;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->updateBackground(Z)V

    goto/16 :goto_1

    :cond_3
    sget-object v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    const-string v8, "histLayId"

    if-ne v6, v7, :cond_6

    iget-object v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v6, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getTextByRef(Ljava/lang/String;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v6

    sget-object v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->text_create:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    if-ne v3, v7, :cond_4

    if-eqz v5, :cond_9

    invoke-virtual {v2, v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v6, v5, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->undoDeleteText(Landroid/os/Bundle;ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    sget-object v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->text_delete:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    if-ne v3, v7, :cond_5

    if-eqz v6, :cond_9

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->undoCreateText(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    sget-object v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->text_action:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    if-ne v3, v4, :cond_9

    if-eqz v5, :cond_9

    if-eqz v6, :cond_9

    invoke-virtual {v6, v5, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyBundle(Landroid/os/Bundle;Z)V

    goto :goto_1

    :cond_6
    sget-object v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne v6, v7, :cond_9

    iget-object v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v6, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getShapeByRef(Ljava/lang/String;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v6

    sget-object v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->shape_create:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    if-ne v3, v7, :cond_7

    if-eqz v5, :cond_9

    invoke-virtual {v2, v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v6, v5, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->undoDeleteShape(Landroid/os/Bundle;ILjava/lang/String;)V

    goto :goto_1

    :cond_7
    sget-object v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->shape_delete:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    if-ne v3, v7, :cond_8

    if-eqz v6, :cond_9

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->undoCreateShape(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    sget-object v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->shape_action:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    if-ne v3, v4, :cond_9

    if-eqz v6, :cond_9

    if-eqz v5, :cond_9

    invoke-virtual {v6, v5, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->applyBundle(Landroid/os/Bundle;Z)V

    :cond_9
    :goto_1
    const-string v3, "histKeepGoing"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->hasRedo()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_a

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->redrawAll()V

    :cond_b
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->updateBackground()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->hasHistory()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->updateUndoButtonEnabled(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->hasRedo()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->updateRedoButtonEnabled(Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public static undo(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 11

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->endGrouping()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->hasHistory()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "\u0644\u0627 \u064a\u0648\u062c\u062f \u062a\u0631\u0627\u062c\u0639 \u0645\u062a\u0628\u0642\u064d"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->isOptionExpandOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->getLast()Landroid/os/Bundle;

    move-result-object v2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->undoneLast()V

    if-eqz v2, :cond_9

    const-string v3, "histType"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    if-eqz v3, :cond_8

    const-string v4, "histRef"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "histData"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/UndoOperation;->getComponentType(Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    move-result-object v6

    sget-object v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->bg:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    const-string v8, "histRedoData"

    if-ne v6, v7, :cond_2

    invoke-virtual {p0, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->recreatePreviewBg(Landroid/os/Bundle;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->updateBackground(Z)V

    goto/16 :goto_1

    :cond_2
    sget-object v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    const-string v9, "histLayId"

    if-ne v6, v7, :cond_5

    iget-object v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v6, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getTextByRef(Ljava/lang/String;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v6

    sget-object v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->text_create:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    if-ne v3, v7, :cond_3

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->saveToBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->undoCreateText(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    sget-object v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->text_delete:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    if-ne v3, v7, :cond_4

    if-eqz v5, :cond_8

    invoke-virtual {v2, v9, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v6, v5, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->undoDeleteText(Landroid/os/Bundle;ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    sget-object v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->text_action:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    if-ne v3, v4, :cond_8

    if-eqz v5, :cond_8

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->saveToBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v6, v5, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyBundle(Landroid/os/Bundle;Z)V

    goto :goto_1

    :cond_5
    sget-object v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne v6, v7, :cond_8

    iget-object v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v6, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getShapeByRef(Ljava/lang/String;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v6

    sget-object v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->shape_create:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    if-ne v3, v7, :cond_6

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->saveToBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->undoCreateShape(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    sget-object v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->shape_delete:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    if-ne v3, v7, :cond_7

    if-eqz v5, :cond_8

    invoke-virtual {v2, v9, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v6, v5, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->undoDeleteShape(Landroid/os/Bundle;ILjava/lang/String;)V

    goto :goto_1

    :cond_7
    sget-object v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->shape_action:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    if-ne v3, v4, :cond_8

    if-eqz v6, :cond_8

    if-eqz v5, :cond_8

    invoke-virtual {v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->saveToBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v6, v5, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->applyBundle(Landroid/os/Bundle;Z)V

    :cond_8
    :goto_1
    const-string v3, "histKeepGoing"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->hasHistory()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_9

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->redrawAll()V

    :cond_a
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->updateBackground()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->hasHistory()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->updateUndoButtonEnabled(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->hasRedo()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->updateRedoButtonEnabled(Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method
