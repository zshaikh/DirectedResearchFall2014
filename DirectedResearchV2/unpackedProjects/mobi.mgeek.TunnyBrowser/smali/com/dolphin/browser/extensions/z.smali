.class final Lcom/dolphin/browser/extensions/z;
.super Ljava/lang/Object;
.source "MessageCenter.java"

# interfaces
.implements Lcom/dolphin/browser/extensions/IBookmarkExtension;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/dolphin/browser/extensions/IBookmarkExtension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 592
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-class v1, Lcom/dolphin/browser/extensions/IBookmarkExtension;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->a(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    .line 593
    return-object v0
.end method


# virtual methods
.method public onChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/z;->a()Ljava/util/Set;

    move-result-object v0

    .line 602
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IBookmarkExtension;

    .line 604
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/extensions/IBookmarkExtension;->onChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 605
    :catch_0
    move-exception v0

    .line 606
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 609
    :cond_0
    return-void
.end method

.method public onChildReordered(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 616
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/z;->a()Ljava/util/Set;

    move-result-object v0

    .line 617
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IBookmarkExtension;

    .line 619
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/extensions/IBookmarkExtension;->onChildReordered(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 620
    :catch_0
    move-exception v0

    .line 621
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 624
    :cond_0
    return-void
.end method

.method public onCreated(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 631
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/z;->a()Ljava/util/Set;

    move-result-object v0

    .line 632
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IBookmarkExtension;

    .line 634
    :try_start_0
    invoke-interface {v0, p1}, Lcom/dolphin/browser/extensions/IBookmarkExtension;->onCreated(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 635
    :catch_0
    move-exception v0

    .line 636
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 639
    :cond_0
    return-void
.end method

.method public onImportBegan()V
    .locals 2

    .prologue
    .line 646
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/z;->a()Ljava/util/Set;

    move-result-object v0

    .line 647
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IBookmarkExtension;

    .line 649
    :try_start_0
    invoke-interface {v0}, Lcom/dolphin/browser/extensions/IBookmarkExtension;->onImportBegan()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 650
    :catch_0
    move-exception v0

    .line 651
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 654
    :cond_0
    return-void
.end method

.method public onImportFinished()V
    .locals 2

    .prologue
    .line 661
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/z;->a()Ljava/util/Set;

    move-result-object v0

    .line 662
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IBookmarkExtension;

    .line 664
    :try_start_0
    invoke-interface {v0}, Lcom/dolphin/browser/extensions/IBookmarkExtension;->onImportFinished()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 665
    :catch_0
    move-exception v0

    .line 666
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 669
    :cond_0
    return-void
.end method

.method public onMoved(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 676
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/z;->a()Ljava/util/Set;

    move-result-object v0

    .line 677
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IBookmarkExtension;

    .line 679
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/extensions/IBookmarkExtension;->onMoved(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 680
    :catch_0
    move-exception v0

    .line 681
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 685
    :cond_0
    return-void
.end method

.method public onRemoved(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 692
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/z;->a()Ljava/util/Set;

    move-result-object v0

    .line 693
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IBookmarkExtension;

    .line 695
    :try_start_0
    invoke-interface {v0, p1}, Lcom/dolphin/browser/extensions/IBookmarkExtension;->onRemoved(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 696
    :catch_0
    move-exception v0

    .line 697
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 700
    :cond_0
    return-void
.end method
