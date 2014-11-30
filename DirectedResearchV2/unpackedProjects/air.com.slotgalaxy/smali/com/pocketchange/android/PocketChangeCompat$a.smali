.class Lcom/pocketchange/android/PocketChangeCompat$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pocketchange/android/PocketChangeCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    if-nez p1, :cond_1

    .line 168
    :cond_0
    return-void

    .line 162
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 163
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 164
    if-gez v1, :cond_2

    .line 165
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_3

    const-string v4, ""

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Count ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] for item ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] < 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 123
    monitor-enter p0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/pocketchange/android/PocketChangeCompat$a;->a:Ljava/util/Map;

    if-nez v0, :cond_1

    move-object v1, v3

    .line 125
    :goto_0
    if-nez v1, :cond_2

    .line 126
    monitor-exit p0

    move v0, v2

    .line 134
    :cond_0
    :goto_1
    return v0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/pocketchange/android/PocketChangeCompat$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    goto :goto_0

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/pocketchange/android/PocketChangeCompat$a;->b:Ljava/util/Map;

    if-nez v0, :cond_3

    move-object v0, v3

    .line 129
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 131
    if-eqz v0, :cond_4

    .line 132
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    .line 134
    :goto_3
    if-gez v0, :cond_0

    move v0, v2

    goto :goto_1

    .line 128
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/pocketchange/android/PocketChangeCompat$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_2

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    move v0, v1

    goto :goto_3
.end method

.method public a()Lorg/json/JSONObject;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/pocketchange/android/PocketChangeCompat$a;->a:Ljava/util/Map;

    if-nez v0, :cond_2

    move-object v0, v2

    .line 101
    :goto_0
    iget-object v1, p0, Lcom/pocketchange/android/PocketChangeCompat$a;->b:Ljava/util/Map;

    if-nez v1, :cond_3

    move-object v1, v2

    .line 106
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 109
    if-eqz v0, :cond_0

    .line 110
    :try_start_1
    const-string v3, "item_count_by_sku"

    invoke-static {v0}, Lcom/pocketchange/android/PCSingleton;->b(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    :cond_0
    if-eqz v1, :cond_1

    .line 113
    const-string v0, "used_item_count_by_sku"

    invoke-static {v1}, Lcom/pocketchange/android/PCSingleton;->b(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 118
    :cond_1
    return-object v2

    .line 96
    :cond_2
    :try_start_2
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/pocketchange/android/PocketChangeCompat$a;->a:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 101
    :cond_3
    :try_start_3
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/pocketchange/android/PocketChangeCompat$a;->b:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string v3, "used_item_count_by_sku"

    const-string v1, "item_count_by_sku"

    .line 75
    const-string v0, "item_count_by_sku"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "item_count_by_sku"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/pocketchange/android/PCSingleton;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    .line 80
    :goto_0
    const-string v1, "used_item_count_by_sku"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "used_item_count_by_sku"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/pocketchange/android/PCSingleton;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    .line 85
    :goto_1
    const-string v2, "Invalid inventory"

    invoke-static {v2, v0}, Lcom/pocketchange/android/PocketChangeCompat$a;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 86
    const-string v2, "Invalid used inventory"

    invoke-static {v2, v1}, Lcom/pocketchange/android/PocketChangeCompat$a;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 87
    monitor-enter p0

    .line 88
    :try_start_0
    iput-object v0, p0, Lcom/pocketchange/android/PocketChangeCompat$a;->a:Ljava/util/Map;

    .line 89
    iput-object v1, p0, Lcom/pocketchange/android/PocketChangeCompat$a;->b:Ljava/util/Map;

    .line 90
    monitor-exit p0

    .line 91
    return-void

    :cond_0
    move-object v0, v2

    .line 75
    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 80
    goto :goto_1

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/pocketchange/android/PocketChangeCompat$a;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
