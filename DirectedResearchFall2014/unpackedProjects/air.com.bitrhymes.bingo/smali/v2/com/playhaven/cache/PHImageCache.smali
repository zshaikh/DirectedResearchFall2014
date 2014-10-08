.class public Lv2/com/playhaven/cache/PHImageCache;
.super Ljava/lang/Object;
.source "PHImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv2/com/playhaven/cache/PHImageCache$JSONNode;
    }
.end annotation


# static fields
.field private static IMAGE_KEY:Ljava/lang/String;

.field private static LANDSCAPE_KEY:Ljava/lang/String;

.field private static NO_NAME:Ljava/lang/String;

.field private static PORTRAIT_KEY:Ljava/lang/String;

.field private static URL_KEY:Ljava/lang/String;

.field private static sharedImageCache:Lv2/com/playhaven/cache/PHImageCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "<no name>"

    sput-object v0, Lv2/com/playhaven/cache/PHImageCache;->NO_NAME:Ljava/lang/String;

    .line 28
    const-string v0, "image"

    sput-object v0, Lv2/com/playhaven/cache/PHImageCache;->IMAGE_KEY:Ljava/lang/String;

    .line 30
    const-string v0, "url"

    sput-object v0, Lv2/com/playhaven/cache/PHImageCache;->URL_KEY:Ljava/lang/String;

    .line 32
    const-string v0, "PH_PORTRAIT"

    sput-object v0, Lv2/com/playhaven/cache/PHImageCache;->PORTRAIT_KEY:Ljava/lang/String;

    .line 34
    const-string v0, "PH_LANDSCAPE"

    sput-object v0, Lv2/com/playhaven/cache/PHImageCache;->LANDSCAPE_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method private cacheAllImagesInContent(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "contentJSON"    # Lorg/json/JSONObject;

    .prologue
    .line 288
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 312
    :cond_0
    return-void

    .line 293
    :cond_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 296
    .local v1, "queue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lv2/com/playhaven/cache/PHImageCache$JSONNode;>;"
    new-instance v2, Lv2/com/playhaven/cache/PHImageCache$JSONNode;

    sget-object v3, Lv2/com/playhaven/cache/PHImageCache;->NO_NAME:Ljava/lang/String;

    invoke-direct {v2, p1, v3}, Lv2/com/playhaven/cache/PHImageCache$JSONNode;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 299
    :goto_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 302
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/com/playhaven/cache/PHImageCache$JSONNode;

    .line 305
    .local v0, "cur_node":Lv2/com/playhaven/cache/PHImageCache$JSONNode;
    invoke-direct {p0, v0}, Lv2/com/playhaven/cache/PHImageCache;->convertNodeToCached(Lv2/com/playhaven/cache/PHImageCache$JSONNode;)V

    .line 309
    invoke-direct {p0, v0, v1}, Lv2/com/playhaven/cache/PHImageCache;->enqueueNodeChildren(Lv2/com/playhaven/cache/PHImageCache$JSONNode;Ljava/util/LinkedList;)V

    goto :goto_0
.end method

.method private cacheImageEntry(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "imageEntry"    # Lorg/json/JSONObject;

    .prologue
    .line 167
    sget-object v2, Lv2/com/playhaven/cache/PHImageCache;->PORTRAIT_KEY:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 168
    .local v1, "portrait":Lorg/json/JSONObject;
    sget-object v2, Lv2/com/playhaven/cache/PHImageCache;->LANDSCAPE_KEY:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 173
    .local v0, "landscape":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 175
    :try_start_0
    sget-object v2, Lv2/com/playhaven/cache/PHImageCache;->URL_KEY:Ljava/lang/String;

    sget-object v3, Lv2/com/playhaven/cache/PHImageCache;->URL_KEY:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lv2/com/playhaven/cache/PHImageCache;->cacheResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    :cond_0
    if-eqz v0, :cond_1

    .line 179
    sget-object v2, Lv2/com/playhaven/cache/PHImageCache;->URL_KEY:Ljava/lang/String;

    sget-object v3, Lv2/com/playhaven/cache/PHImageCache;->URL_KEY:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lv2/com/playhaven/cache/PHImageCache;->cacheResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_1
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private cacheResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 135
    if-eqz p1, :cond_0

    invoke-static {}, Lv2/com/playhaven/cache/PHCache;->hasNotBeenInstalled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v2, p1

    .line 157
    :goto_0
    return-object v2

    .line 139
    :cond_1
    invoke-static {}, Lv2/com/playhaven/cache/PHCache;->getSharedCache()Lv2/com/playhaven/cache/PHCache;

    move-result-object v2

    invoke-virtual {v2, p1}, Lv2/com/playhaven/cache/PHCache;->getCachedFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "local_url":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checking for image url in cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and finding local URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 144
    if-eqz v0, :cond_2

    move-object v2, v0

    goto :goto_0

    .line 151
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting new cache request for image: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 153
    new-instance v1, Lv2/com/playhaven/requests/open/PHPrefetchTask;

    invoke-direct {v1}, Lv2/com/playhaven/requests/open/PHPrefetchTask;-><init>()V

    .line 154
    .local v1, "task":Lv2/com/playhaven/requests/open/PHPrefetchTask;
    invoke-virtual {v1, p1}, Lv2/com/playhaven/requests/open/PHPrefetchTask;->setURL(Ljava/lang/String;)V

    .line 155
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lv2/com/playhaven/requests/open/PHPrefetchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-object v2, p1

    .line 157
    goto :goto_0
.end method

.method private convertNodeToCached(Lv2/com/playhaven/cache/PHImageCache$JSONNode;)V
    .locals 1
    .param p1, "node"    # Lv2/com/playhaven/cache/PHImageCache$JSONNode;

    .prologue
    .line 193
    invoke-virtual {p1}, Lv2/com/playhaven/cache/PHImageCache$JSONNode;->isObject()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "image"

    invoke-virtual {p1, v0}, Lv2/com/playhaven/cache/PHImageCache$JSONNode;->nameIs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p1, Lv2/com/playhaven/cache/PHImageCache$JSONNode;->object:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lv2/com/playhaven/cache/PHImageCache;->cacheImageEntry(Lorg/json/JSONObject;)V

    .line 197
    :cond_0
    return-void
.end method

.method private enqueueNodeChildren(Lv2/com/playhaven/cache/PHImageCache$JSONNode;Ljava/util/LinkedList;)V
    .locals 11
    .param p1, "node"    # Lv2/com/playhaven/cache/PHImageCache$JSONNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv2/com/playhaven/cache/PHImageCache$JSONNode;",
            "Ljava/util/LinkedList",
            "<",
            "Lv2/com/playhaven/cache/PHImageCache$JSONNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p2, "queue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lv2/com/playhaven/cache/PHImageCache$JSONNode;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lv2/com/playhaven/cache/PHImageCache$JSONNode;->children()I

    move-result v9

    if-nez v9, :cond_1

    .line 271
    :cond_0
    return-void

    .line 213
    :cond_1
    invoke-virtual {p1}, Lv2/com/playhaven/cache/PHImageCache$JSONNode;->isArray()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 214
    iget-object v0, p1, Lv2/com/playhaven/cache/PHImageCache$JSONNode;->array:Lorg/json/JSONArray;

    .line 217
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v5, v9, :cond_0

    .line 220
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 223
    .local v2, "childObject":Lorg/json/JSONObject;
    if-eqz v2, :cond_3

    .line 225
    new-instance v9, Lv2/com/playhaven/cache/PHImageCache$JSONNode;

    sget-object v10, Lv2/com/playhaven/cache/PHImageCache;->NO_NAME:Ljava/lang/String;

    invoke-direct {v9, v2, v10}, Lv2/com/playhaven/cache/PHImageCache$JSONNode;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {p2, v9}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 217
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 230
    :cond_3
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v1

    .line 232
    .local v1, "childArray":Lorg/json/JSONArray;
    if-eqz v1, :cond_2

    .line 234
    new-instance v9, Lv2/com/playhaven/cache/PHImageCache$JSONNode;

    sget-object v10, Lv2/com/playhaven/cache/PHImageCache;->NO_NAME:Ljava/lang/String;

    invoke-direct {v9, v1, v10}, Lv2/com/playhaven/cache/PHImageCache$JSONNode;-><init>(Lorg/json/JSONArray;Ljava/lang/String;)V

    invoke-virtual {p2, v9}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 243
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "childArray":Lorg/json/JSONArray;
    .end local v2    # "childObject":Lorg/json/JSONObject;
    .end local v5    # "i":I
    :cond_4
    invoke-virtual {p1}, Lv2/com/playhaven/cache/PHImageCache$JSONNode;->isObject()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 244
    iget-object v8, p1, Lv2/com/playhaven/cache/PHImageCache$JSONNode;->object:Lorg/json/JSONObject;

    .line 247
    .local v8, "object":Lorg/json/JSONObject;
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 249
    .local v7, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 250
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 253
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 255
    .local v4, "cur_obj":Lorg/json/JSONObject;
    if-eqz v4, :cond_6

    .line 257
    new-instance v9, Lv2/com/playhaven/cache/PHImageCache$JSONNode;

    invoke-direct {v9, v4, v6}, Lv2/com/playhaven/cache/PHImageCache$JSONNode;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {p2, v9}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_2

    .line 261
    :cond_6
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 264
    .local v3, "cur_array":Lorg/json/JSONArray;
    if-eqz v3, :cond_5

    .line 266
    new-instance v9, Lv2/com/playhaven/cache/PHImageCache$JSONNode;

    invoke-direct {v9, v3, v6}, Lv2/com/playhaven/cache/PHImageCache$JSONNode;-><init>(Lorg/json/JSONArray;Ljava/lang/String;)V

    invoke-virtual {p2, v9}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static getSharedCache()Lv2/com/playhaven/cache/PHImageCache;
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Lv2/com/playhaven/cache/PHCache;->hasBeenInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lv2/com/playhaven/cache/PHImageCache;->sharedImageCache:Lv2/com/playhaven/cache/PHImageCache;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lv2/com/playhaven/cache/PHImageCache;

    invoke-direct {v0}, Lv2/com/playhaven/cache/PHImageCache;-><init>()V

    sput-object v0, Lv2/com/playhaven/cache/PHImageCache;->sharedImageCache:Lv2/com/playhaven/cache/PHImageCache;

    .line 102
    :cond_0
    sget-object v0, Lv2/com/playhaven/cache/PHImageCache;->sharedImageCache:Lv2/com/playhaven/cache/PHImageCache;

    return-object v0
.end method

.method public static hasBeenInstalled()Z
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Lv2/com/playhaven/cache/PHCache;->hasBeenInstalled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public cacheImages(Lv2/com/playhaven/model/PHContent;)Lv2/com/playhaven/model/PHContent;
    .locals 1
    .param p1, "content"    # Lv2/com/playhaven/model/PHContent;

    .prologue
    .line 117
    const-string v0, "Caching images"

    invoke-static {v0}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 119
    iget-object v0, p1, Lv2/com/playhaven/model/PHContent;->context:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lv2/com/playhaven/cache/PHImageCache;->cacheAllImagesInContent(Lorg/json/JSONObject;)V

    .line 123
    return-object p1
.end method
