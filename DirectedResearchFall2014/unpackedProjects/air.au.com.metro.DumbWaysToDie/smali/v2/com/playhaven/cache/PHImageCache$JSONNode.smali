.class Lv2/com/playhaven/cache/PHImageCache$JSONNode;
.super Ljava/lang/Object;
.source "PHImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/com/playhaven/cache/PHImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JSONNode"
.end annotation


# instance fields
.field public array:Lorg/json/JSONArray;

.field public name:Ljava/lang/String;

.field public object:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 0
    .parameter "array"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lv2/com/playhaven/cache/PHImageCache$JSONNode;->array:Lorg/json/JSONArray;

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 0
    .parameter "array"
    .parameter "name"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lv2/com/playhaven/cache/PHImageCache$JSONNode;->array:Lorg/json/JSONArray;

    .line 65
    iput-object p2, p0, Lv2/com/playhaven/cache/PHImageCache$JSONNode;->name:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "object"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lv2/com/playhaven/cache/PHImageCache$JSONNode;->object:Lorg/json/JSONObject;

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .parameter "object"
    .parameter "name"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lv2/com/playhaven/cache/PHImageCache$JSONNode;->object:Lorg/json/JSONObject;

    .line 60
    iput-object p2, p0, Lv2/com/playhaven/cache/PHImageCache$JSONNode;->name:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public children()I
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lv2/com/playhaven/cache/PHImageCache$JSONNode;->isObject()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv2/com/playhaven/cache/PHImageCache$JSONNode;->object:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    .line 93
    :goto_0
    return v0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lv2/com/playhaven/cache/PHImageCache$JSONNode;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lv2/com/playhaven/cache/PHImageCache$JSONNode;->array:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    goto :goto_0

    .line 93
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lv2/com/playhaven/cache/PHImageCache$JSONNode;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isArray()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lv2/com/playhaven/cache/PHImageCache$JSONNode;->array:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isObject()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lv2/com/playhaven/cache/PHImageCache$JSONNode;->object:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nameIs(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 84
    invoke-virtual {p0}, Lv2/com/playhaven/cache/PHImageCache$JSONNode;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
