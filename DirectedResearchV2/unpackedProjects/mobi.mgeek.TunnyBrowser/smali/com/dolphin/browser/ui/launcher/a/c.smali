.class public Lcom/dolphin/browser/ui/launcher/a/c;
.super Ljava/lang/Object;
.source "HomeWorkspace.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/ui/launcher/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/ui/launcher/a/c;->a:Ljava/util/List;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/ui/launcher/a/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/ui/launcher/a/c;->a:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lcom/dolphin/browser/ui/launcher/a/c;->a:Ljava/util/List;

    .line 29
    return-void
.end method

.method private static a(Lcom/dolphin/browser/ui/launcher/a/c;)Lcom/dolphin/browser/ui/launcher/a/c;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 67
    if-nez p0, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 91
    :goto_0
    return-object v0

    .line 71
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->p:Lmobi/mgeek/TunnyBrowser/R$integer;

    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    move-object v3, v0

    move v4, v2

    move v5, v2

    .line 76
    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/a/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 77
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/a/c;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/launcher/a/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/a/a;->a()Ljava/util/List;

    move-result-object v8

    move v0, v2

    .line 78
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v0, v9, :cond_3

    .line 79
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v5, v5, 0x1

    .line 81
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v0, v9, :cond_1

    add-int/lit8 v9, v7, -0x1

    if-ne v5, v9, :cond_2

    .line 82
    :cond_1
    new-instance v5, Lcom/dolphin/browser/ui/launcher/a/a;

    invoke-direct {v5, v4, v3}, Lcom/dolphin/browser/ui/launcher/a/a;-><init>(ILjava/util/List;)V

    .line 83
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v4, v4, 0x1

    .line 86
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v5, v2

    .line 78
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 76
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 91
    :cond_4
    new-instance v0, Lcom/dolphin/browser/ui/launcher/a/c;

    invoke-direct {v0, v6}, Lcom/dolphin/browser/ui/launcher/a/c;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONArray;)Lcom/dolphin/browser/ui/launcher/a/c;
    .locals 5

    .prologue
    .line 38
    const/4 v0, 0x0

    .line 39
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 40
    new-instance v0, Lcom/dolphin/browser/ui/launcher/a/c;

    invoke-direct {v0}, Lcom/dolphin/browser/ui/launcher/a/c;-><init>()V

    .line 42
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 43
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    .line 46
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 47
    if-eqz v1, :cond_0

    .line 48
    invoke-static {v1}, Lcom/dolphin/browser/ui/launcher/a/a;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/ui/launcher/a/a;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    iget-object v4, v0, Lcom/dolphin/browser/ui/launcher/a/c;->a:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 54
    :catch_0
    move-exception v1

    .line 55
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 59
    :cond_1
    iget-object v1, v0, Lcom/dolphin/browser/ui/launcher/a/c;->a:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 62
    :cond_2
    invoke-static {v0}, Lcom/dolphin/browser/ui/launcher/a/c;->a(Lcom/dolphin/browser/ui/launcher/a/c;)Lcom/dolphin/browser/ui/launcher/a/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/ui/launcher/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/a/c;->a:Ljava/util/List;

    return-object v0
.end method
