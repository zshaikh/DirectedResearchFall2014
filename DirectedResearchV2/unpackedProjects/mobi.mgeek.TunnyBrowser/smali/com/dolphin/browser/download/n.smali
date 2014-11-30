.class Lcom/dolphin/browser/download/n;
.super Lcom/dolphin/browser/util/f;
.source "FileCategoryManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/download/m;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/download/m;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/dolphin/browser/download/n;->a:Lcom/dolphin/browser/download/m;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method

.method private a(Ljava/io/File;I)V
    .locals 9

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/dolphin/browser/download/n;->f()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 144
    :cond_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 92
    if-eqz v2, :cond_0

    .line 96
    const/4 v0, 0x5

    if-gt p2, v0, :cond_0

    .line 100
    invoke-static {}, Lcom/dolphin/browser/download/e;->a()Lcom/dolphin/browser/download/e;

    move-result-object v3

    .line 101
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 102
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 103
    array-length v6, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v6, :cond_4

    aget-object v0, v2, v1

    .line 104
    invoke-virtual {p0}, Lcom/dolphin/browser/download/n;->f()Z

    move-result v7

    if-nez v7, :cond_0

    .line 108
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 109
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 111
    :cond_3
    new-instance v7, Lcom/dolphin/browser/download/p;

    invoke-direct {v7, v0}, Lcom/dolphin/browser/download/p;-><init>(Ljava/io/File;)V

    .line 112
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/dolphin/browser/download/e;->i(Ljava/lang/String;)Lcom/dolphin/browser/download/a;

    move-result-object v0

    .line 114
    iget-object v8, p0, Lcom/dolphin/browser/download/n;->a:Lcom/dolphin/browser/download/m;

    invoke-static {v8}, Lcom/dolphin/browser/download/m;->a(Lcom/dolphin/browser/download/m;)Lcom/dolphin/browser/download/ui/bn;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/dolphin/browser/download/ui/bn;->a(Lcom/dolphin/browser/download/a;)V

    .line 115
    iget-object v8, p0, Lcom/dolphin/browser/download/n;->a:Lcom/dolphin/browser/download/m;

    invoke-static {v8}, Lcom/dolphin/browser/download/m;->b(Lcom/dolphin/browser/download/m;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/download/ui/bl;

    .line 116
    if-eqz v0, :cond_2

    .line 117
    invoke-virtual {v0, v7}, Lcom/dolphin/browser/download/ui/bl;->a(Ljava/io/File;)V

    goto :goto_1

    .line 123
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 125
    new-instance v0, Lcom/dolphin/browser/download/o;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/download/o;-><init>(Lcom/dolphin/browser/download/n;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->b(Ljava/lang/Runnable;)V

    .line 138
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 139
    invoke-virtual {p0}, Lcom/dolphin/browser/download/n;->f()Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    add-int/lit8 v2, p2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/dolphin/browser/download/n;->a(Ljava/io/File;I)V

    goto :goto_2
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/download/n;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 80
    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 81
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/download/n;->a(Ljava/io/File;I)V

    .line 83
    const/4 v0, 0x0

    return-object v0
.end method
