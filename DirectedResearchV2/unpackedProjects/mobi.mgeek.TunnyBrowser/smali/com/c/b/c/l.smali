.class public Lcom/c/b/c/l;
.super Ljava/lang/Object;
.source "Notebook.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lorg/apache/c/b",
        "<",
        "Lcom/c/b/c/l;",
        "Lcom/c/b/c/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/c/b/c/m;",
            "Lorg/apache/c/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lorg/apache/c/b/j;

.field private static final c:Lorg/apache/c/b/b;

.field private static final d:Lorg/apache/c/b/b;

.field private static final e:Lorg/apache/c/b/b;

.field private static final f:Lorg/apache/c/b/b;

.field private static final g:Lorg/apache/c/b/b;

.field private static final h:Lorg/apache/c/b/b;

.field private static final i:Lorg/apache/c/b/b;

.field private static final j:Lorg/apache/c/b/b;

.field private static final k:Lorg/apache/c/b/b;

.field private static final l:Lorg/apache/c/b/b;

.field private static final m:Lorg/apache/c/b/b;


# instance fields
.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:Z

.field private r:J

.field private s:J

.field private t:Lcom/c/b/c/p;

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/c/b/c/v;",
            ">;"
        }
    .end annotation
.end field

.field private y:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0xf

    const/16 v9, 0xc

    const/16 v8, 0xa

    const/16 v6, 0xb

    const/4 v7, 0x2

    .line 118
    new-instance v0, Lorg/apache/c/b/j;

    const-string v1, "Notebook"

    invoke-direct {v0, v1}, Lorg/apache/c/b/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/c/b/c/l;->b:Lorg/apache/c/b/j;

    .line 132
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "guid"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/l;->c:Lorg/apache/c/b/b;

    .line 134
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "name"

    invoke-direct {v0, v1, v6, v7}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/l;->d:Lorg/apache/c/b/b;

    .line 136
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "updateSequenceNum"

    const/16 v2, 0x8

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/l;->e:Lorg/apache/c/b/b;

    .line 138
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "defaultNotebook"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/l;->f:Lorg/apache/c/b/b;

    .line 140
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "serviceCreated"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/l;->g:Lorg/apache/c/b/b;

    .line 142
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "serviceUpdated"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/l;->h:Lorg/apache/c/b/b;

    .line 144
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "publishing"

    invoke-direct {v0, v1, v9, v8}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/l;->i:Lorg/apache/c/b/b;

    .line 146
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "published"

    invoke-direct {v0, v1, v7, v6}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/l;->j:Lorg/apache/c/b/b;

    .line 148
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "stack"

    invoke-direct {v0, v1, v6, v9}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/l;->k:Lorg/apache/c/b/b;

    .line 150
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "sharedNotebookIds"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v10, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/l;->l:Lorg/apache/c/b/b;

    .line 152
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "sharedNotebooks"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v10, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/l;->m:Lorg/apache/c/b/b;

    .line 269
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/c/b/c/m;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 271
    sget-object v1, Lcom/c/b/c/m;->a:Lcom/c/b/c/m;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "guid"

    new-instance v4, Lorg/apache/c/a/c;

    const-string v5, "Guid"

    invoke-direct {v4, v6, v5}, Lorg/apache/c/a/c;-><init>(BLjava/lang/String;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v1, Lcom/c/b/c/m;->b:Lcom/c/b/c/m;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "name"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v6}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v1, Lcom/c/b/c/m;->c:Lcom/c/b/c/m;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "updateSequenceNum"

    new-instance v4, Lorg/apache/c/a/c;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v1, Lcom/c/b/c/m;->d:Lcom/c/b/c/m;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "defaultNotebook"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v7}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v1, Lcom/c/b/c/m;->e:Lcom/c/b/c/m;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "serviceCreated"

    new-instance v4, Lorg/apache/c/a/c;

    const-string v5, "Timestamp"

    invoke-direct {v4, v8, v5}, Lorg/apache/c/a/c;-><init>(BLjava/lang/String;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v1, Lcom/c/b/c/m;->f:Lcom/c/b/c/m;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "serviceUpdated"

    new-instance v4, Lorg/apache/c/a/c;

    const-string v5, "Timestamp"

    invoke-direct {v4, v8, v5}, Lorg/apache/c/a/c;-><init>(BLjava/lang/String;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v1, Lcom/c/b/c/m;->g:Lcom/c/b/c/m;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "publishing"

    new-instance v4, Lorg/apache/c/a/g;

    const-class v5, Lcom/c/b/c/p;

    invoke-direct {v4, v9, v5}, Lorg/apache/c/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v1, Lcom/c/b/c/m;->h:Lcom/c/b/c/m;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "published"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v7}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v1, Lcom/c/b/c/m;->i:Lcom/c/b/c/m;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "stack"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v6}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v1, Lcom/c/b/c/m;->j:Lcom/c/b/c/m;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "sharedNotebookIds"

    new-instance v4, Lorg/apache/c/a/d;

    new-instance v5, Lorg/apache/c/a/c;

    invoke-direct {v5, v8}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v4, v10, v5}, Lorg/apache/c/a/d;-><init>(BLorg/apache/c/a/c;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v1, Lcom/c/b/c/m;->k:Lcom/c/b/c/m;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "sharedNotebooks"

    new-instance v4, Lorg/apache/c/a/d;

    new-instance v5, Lorg/apache/c/a/g;

    const-class v6, Lcom/c/b/c/v;

    invoke-direct {v5, v9, v6}, Lorg/apache/c/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v10, v5}, Lorg/apache/c/a/d;-><init>(BLorg/apache/c/a/c;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/c/b/c/l;->a:Ljava/util/Map;

    .line 307
    const-class v0, Lcom/c/b/c/l;

    sget-object v1, Lcom/c/b/c/l;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/c/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 308
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    const/4 v0, 0x5

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/c/b/c/l;->y:[Z

    .line 311
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/c/b/c/l;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1359
    if-eqz p0, :cond_5

    .line 1360
    new-instance v0, Lcom/c/b/c/l;

    invoke-direct {v0}, Lcom/c/b/c/l;-><init>()V

    .line 1361
    const-string v2, "guid"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/c/b/c/l;->a(Ljava/lang/String;)V

    .line 1362
    const-string v2, "name"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/b/c/l;->b(Ljava/lang/String;)V

    .line 1363
    const-string v1, "updateSequenceNum"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1364
    const-string v1, "updateSequenceNum"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/c/b/c/l;->a(I)V

    .line 1366
    :cond_0
    const-string v1, "defaultNotebook"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1367
    const-string v1, "defaultNotebook"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/c/b/c/l;->b(Z)V

    .line 1369
    :cond_1
    const-string v1, "serviceCreated"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1370
    const-string v1, "serviceCreated"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/c/b/c/l;->a(J)V

    .line 1372
    :cond_2
    const-string v1, "serviceUpdated"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1373
    const-string v1, "serviceUpdated"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/c/b/c/l;->b(J)V

    .line 1375
    :cond_3
    const-string v1, "publishing"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/c/b/c/p;->a(Lorg/json/JSONObject;)Lcom/c/b/c/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/b/c/l;->a(Lcom/c/b/c/p;)V

    .line 1376
    const-string v1, "published"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1377
    const-string v1, "published"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/c/b/c/l;->f(Z)V

    .line 1379
    :cond_4
    const-string v1, "stack"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/b/c/l;->c(Ljava/lang/String;)V

    .line 1380
    const-string v1, "sharedNotebookIds"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/c/b/c/v;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/b/c/l;->a(Ljava/util/List;)V

    .line 1381
    const-string v1, "sharedNotebooks"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/c/b/c/v;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/b/c/l;->b(Ljava/util/List;)V

    .line 1386
    :goto_0
    return-object v0

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/c/b/c/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1344
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1345
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1346
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1347
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1348
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1349
    invoke-static {v3}, Lcom/c/b/c/l;->a(Lorg/json/JSONObject;)Lcom/c/b/c/l;

    move-result-object v3

    .line 1350
    if-eqz v3, :cond_0

    .line 1351
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1347
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1355
    :cond_1
    return-object v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/c/b/c/l;->n:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 432
    iput p1, p0, Lcom/c/b/c/l;->p:I

    .line 433
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/c/b/c/l;->a(Z)V

    .line 434
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 482
    iput-wide p1, p0, Lcom/c/b/c/l;->r:J

    .line 483
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/c/b/c/l;->d(Z)V

    .line 484
    return-void
.end method

.method public a(Lcom/c/b/c/p;)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lcom/c/b/c/l;->t:Lcom/c/b/c/p;

    .line 533
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/c/b/c/l;->n:Ljava/lang/String;

    .line 381
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 626
    iput-object p1, p0, Lcom/c/b/c/l;->w:Ljava/util/List;

    .line 627
    return-void
.end method

.method public a(Lorg/apache/c/b/f;)V
    .locals 10

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x2

    const/4 v1, 0x0

    const/16 v7, 0xb

    const/4 v6, 0x1

    .line 1134
    invoke-virtual {p1}, Lorg/apache/c/b/f;->j()Lorg/apache/c/b/j;

    .line 1136
    :goto_0
    invoke-virtual {p1}, Lorg/apache/c/b/f;->l()Lorg/apache/c/b/b;

    move-result-object v0

    .line 1137
    iget-byte v2, v0, Lorg/apache/c/b/b;->b:B

    if-nez v2, :cond_0

    .line 1250
    invoke-virtual {p1}, Lorg/apache/c/b/f;->k()V

    .line 1251
    invoke-virtual {p0}, Lcom/c/b/c/l;->n()V

    .line 1252
    return-void

    .line 1140
    :cond_0
    iget-short v2, v0, Lorg/apache/c/b/b;->c:S

    packed-switch v2, :pswitch_data_0

    .line 1246
    :pswitch_0
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    .line 1248
    :goto_1
    invoke-virtual {p1}, Lorg/apache/c/b/f;->m()V

    goto :goto_0

    .line 1142
    :pswitch_1
    iget-byte v2, v0, Lorg/apache/c/b/b;->b:B

    if-ne v2, v7, :cond_1

    .line 1143
    invoke-virtual {p1}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/c/l;->n:Ljava/lang/String;

    goto :goto_1

    .line 1145
    :cond_1
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 1149
    :pswitch_2
    iget-byte v2, v0, Lorg/apache/c/b/b;->b:B

    if-ne v2, v7, :cond_2

    .line 1150
    invoke-virtual {p1}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/c/l;->o:Ljava/lang/String;

    goto :goto_1

    .line 1152
    :cond_2
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 1156
    :pswitch_3
    iget-byte v2, v0, Lorg/apache/c/b/b;->b:B

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 1157
    invoke-virtual {p1}, Lorg/apache/c/b/f;->w()I

    move-result v0

    iput v0, p0, Lcom/c/b/c/l;->p:I

    .line 1158
    invoke-virtual {p0, v6}, Lcom/c/b/c/l;->a(Z)V

    goto :goto_1

    .line 1160
    :cond_3
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 1164
    :pswitch_4
    iget-byte v2, v0, Lorg/apache/c/b/b;->b:B

    if-ne v2, v8, :cond_4

    .line 1165
    invoke-virtual {p1}, Lorg/apache/c/b/f;->t()Z

    move-result v0

    iput-boolean v0, p0, Lcom/c/b/c/l;->q:Z

    .line 1166
    invoke-virtual {p0, v6}, Lcom/c/b/c/l;->c(Z)V

    goto :goto_1

    .line 1168
    :cond_4
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 1172
    :pswitch_5
    iget-byte v2, v0, Lorg/apache/c/b/b;->b:B

    if-ne v2, v9, :cond_5

    .line 1173
    invoke-virtual {p1}, Lorg/apache/c/b/f;->x()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/c/b/c/l;->r:J

    .line 1174
    invoke-virtual {p0, v6}, Lcom/c/b/c/l;->d(Z)V

    goto :goto_1

    .line 1176
    :cond_5
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 1180
    :pswitch_6
    iget-byte v2, v0, Lorg/apache/c/b/b;->b:B

    if-ne v2, v9, :cond_6

    .line 1181
    invoke-virtual {p1}, Lorg/apache/c/b/f;->x()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/c/b/c/l;->s:J

    .line 1182
    invoke-virtual {p0, v6}, Lcom/c/b/c/l;->e(Z)V

    goto :goto_1

    .line 1184
    :cond_6
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 1188
    :pswitch_7
    iget-byte v2, v0, Lorg/apache/c/b/b;->b:B

    const/16 v3, 0xc

    if-ne v2, v3, :cond_7

    .line 1189
    new-instance v0, Lcom/c/b/c/p;

    invoke-direct {v0}, Lcom/c/b/c/p;-><init>()V

    iput-object v0, p0, Lcom/c/b/c/l;->t:Lcom/c/b/c/p;

    .line 1190
    iget-object v0, p0, Lcom/c/b/c/l;->t:Lcom/c/b/c/p;

    invoke-virtual {v0, p1}, Lcom/c/b/c/p;->a(Lorg/apache/c/b/f;)V

    goto/16 :goto_1

    .line 1192
    :cond_7
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto/16 :goto_1

    .line 1196
    :pswitch_8
    iget-byte v2, v0, Lorg/apache/c/b/b;->b:B

    if-ne v2, v8, :cond_8

    .line 1197
    invoke-virtual {p1}, Lorg/apache/c/b/f;->t()Z

    move-result v0

    iput-boolean v0, p0, Lcom/c/b/c/l;->u:Z

    .line 1198
    invoke-virtual {p0, v6}, Lcom/c/b/c/l;->g(Z)V

    goto/16 :goto_1

    .line 1200
    :cond_8
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto/16 :goto_1

    .line 1204
    :pswitch_9
    iget-byte v2, v0, Lorg/apache/c/b/b;->b:B

    if-ne v2, v7, :cond_9

    .line 1205
    invoke-virtual {p1}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/c/l;->v:Ljava/lang/String;

    goto/16 :goto_1

    .line 1207
    :cond_9
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto/16 :goto_1

    .line 1211
    :pswitch_a
    iget-byte v2, v0, Lorg/apache/c/b/b;->b:B

    const/16 v3, 0xf

    if-ne v2, v3, :cond_b

    .line 1213
    invoke-virtual {p1}, Lorg/apache/c/b/f;->p()Lorg/apache/c/b/c;

    move-result-object v2

    .line 1214
    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lorg/apache/c/b/c;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/c/b/c/l;->w:Ljava/util/List;

    move v0, v1

    .line 1216
    :goto_2
    iget v3, v2, Lorg/apache/c/b/c;->b:I

    if-ge v0, v3, :cond_a

    .line 1218
    invoke-virtual {p1}, Lorg/apache/c/b/f;->x()J

    move-result-wide v3

    .line 1219
    iget-object v5, p0, Lcom/c/b/c/l;->w:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1216
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1221
    :cond_a
    invoke-virtual {p1}, Lorg/apache/c/b/f;->q()V

    goto/16 :goto_1

    .line 1224
    :cond_b
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto/16 :goto_1

    .line 1228
    :pswitch_b
    iget-byte v2, v0, Lorg/apache/c/b/b;->b:B

    const/16 v3, 0xf

    if-ne v2, v3, :cond_d

    .line 1230
    invoke-virtual {p1}, Lorg/apache/c/b/f;->p()Lorg/apache/c/b/c;

    move-result-object v2

    .line 1231
    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lorg/apache/c/b/c;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/c/b/c/l;->x:Ljava/util/List;

    move v0, v1

    .line 1233
    :goto_3
    iget v3, v2, Lorg/apache/c/b/c;->b:I

    if-ge v0, v3, :cond_c

    .line 1235
    new-instance v3, Lcom/c/b/c/v;

    invoke-direct {v3}, Lcom/c/b/c/v;-><init>()V

    .line 1236
    invoke-virtual {v3, p1}, Lcom/c/b/c/v;->a(Lorg/apache/c/b/f;)V

    .line 1237
    iget-object v4, p0, Lcom/c/b/c/l;->x:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1233
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1239
    :cond_c
    invoke-virtual {p1}, Lorg/apache/c/b/f;->q()V

    goto/16 :goto_1

    .line 1242
    :cond_d
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto/16 :goto_1

    .line 1140
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/c/b/c/l;->y:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 450
    return-void
.end method

.method public a(Lcom/c/b/c/l;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 866
    if-nez p1, :cond_1

    .line 980
    :cond_0
    :goto_0
    return v0

    .line 869
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/c/l;->b()Z

    move-result v1

    .line 870
    invoke-virtual {p1}, Lcom/c/b/c/l;->b()Z

    move-result v2

    .line 871
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 872
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 874
    iget-object v1, p0, Lcom/c/b/c/l;->n:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/b/c/l;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 878
    :cond_3
    invoke-virtual {p0}, Lcom/c/b/c/l;->d()Z

    move-result v1

    .line 879
    invoke-virtual {p1}, Lcom/c/b/c/l;->d()Z

    move-result v2

    .line 880
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 881
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 883
    iget-object v1, p0, Lcom/c/b/c/l;->o:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/b/c/l;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 887
    :cond_5
    invoke-virtual {p0}, Lcom/c/b/c/l;->e()Z

    move-result v1

    .line 889
    invoke-virtual {p1}, Lcom/c/b/c/l;->e()Z

    move-result v2

    .line 891
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 892
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 894
    iget v1, p0, Lcom/c/b/c/l;->p:I

    iget v2, p1, Lcom/c/b/c/l;->p:I

    if-ne v1, v2, :cond_0

    .line 898
    :cond_7
    invoke-virtual {p0}, Lcom/c/b/c/l;->f()Z

    move-result v1

    .line 900
    invoke-virtual {p1}, Lcom/c/b/c/l;->f()Z

    move-result v2

    .line 902
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 903
    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 905
    iget-boolean v1, p0, Lcom/c/b/c/l;->q:Z

    iget-boolean v2, p1, Lcom/c/b/c/l;->q:Z

    if-ne v1, v2, :cond_0

    .line 909
    :cond_9
    invoke-virtual {p0}, Lcom/c/b/c/l;->g()Z

    move-result v1

    .line 911
    invoke-virtual {p1}, Lcom/c/b/c/l;->g()Z

    move-result v2

    .line 913
    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    .line 914
    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 916
    iget-wide v1, p0, Lcom/c/b/c/l;->r:J

    iget-wide v3, p1, Lcom/c/b/c/l;->r:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 920
    :cond_b
    invoke-virtual {p0}, Lcom/c/b/c/l;->h()Z

    move-result v1

    .line 922
    invoke-virtual {p1}, Lcom/c/b/c/l;->h()Z

    move-result v2

    .line 924
    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    .line 925
    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 927
    iget-wide v1, p0, Lcom/c/b/c/l;->s:J

    iget-wide v3, p1, Lcom/c/b/c/l;->s:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 931
    :cond_d
    invoke-virtual {p0}, Lcom/c/b/c/l;->i()Z

    move-result v1

    .line 932
    invoke-virtual {p1}, Lcom/c/b/c/l;->i()Z

    move-result v2

    .line 933
    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    .line 934
    :cond_e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 936
    iget-object v1, p0, Lcom/c/b/c/l;->t:Lcom/c/b/c/p;

    iget-object v2, p1, Lcom/c/b/c/l;->t:Lcom/c/b/c/p;

    invoke-virtual {v1, v2}, Lcom/c/b/c/p;->a(Lcom/c/b/c/p;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 940
    :cond_f
    invoke-virtual {p0}, Lcom/c/b/c/l;->j()Z

    move-result v1

    .line 941
    invoke-virtual {p1}, Lcom/c/b/c/l;->j()Z

    move-result v2

    .line 942
    if-nez v1, :cond_10

    if-eqz v2, :cond_11

    .line 943
    :cond_10
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 945
    iget-boolean v1, p0, Lcom/c/b/c/l;->u:Z

    iget-boolean v2, p1, Lcom/c/b/c/l;->u:Z

    if-ne v1, v2, :cond_0

    .line 949
    :cond_11
    invoke-virtual {p0}, Lcom/c/b/c/l;->k()Z

    move-result v1

    .line 950
    invoke-virtual {p1}, Lcom/c/b/c/l;->k()Z

    move-result v2

    .line 951
    if-nez v1, :cond_12

    if-eqz v2, :cond_13

    .line 952
    :cond_12
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 954
    iget-object v1, p0, Lcom/c/b/c/l;->v:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/b/c/l;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 958
    :cond_13
    invoke-virtual {p0}, Lcom/c/b/c/l;->l()Z

    move-result v1

    .line 960
    invoke-virtual {p1}, Lcom/c/b/c/l;->l()Z

    move-result v2

    .line 962
    if-nez v1, :cond_14

    if-eqz v2, :cond_15

    .line 963
    :cond_14
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 965
    iget-object v1, p0, Lcom/c/b/c/l;->w:Ljava/util/List;

    iget-object v2, p1, Lcom/c/b/c/l;->w:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 969
    :cond_15
    invoke-virtual {p0}, Lcom/c/b/c/l;->m()Z

    move-result v1

    .line 971
    invoke-virtual {p1}, Lcom/c/b/c/l;->m()Z

    move-result v2

    .line 973
    if-nez v1, :cond_16

    if-eqz v2, :cond_17

    .line 974
    :cond_16
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 976
    iget-object v1, p0, Lcom/c/b/c/l;->x:Ljava/util/List;

    iget-object v2, p1, Lcom/c/b/c/l;->x:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 980
    :cond_17
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public b(Lcom/c/b/c/l;)I
    .locals 4

    .prologue
    .line 988
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 989
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 1125
    :cond_0
    :goto_0
    return v0

    .line 995
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/c/l;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/l;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 997
    if-nez v0, :cond_0

    .line 1000
    invoke-virtual {p0}, Lcom/c/b/c/l;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1001
    iget-object v0, p0, Lcom/c/b/c/l;->n:Ljava/lang/String;

    iget-object v1, p1, Lcom/c/b/c/l;->n:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1002
    if-nez v0, :cond_0

    .line 1006
    :cond_2
    invoke-virtual {p0}, Lcom/c/b/c/l;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/l;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1008
    if-nez v0, :cond_0

    .line 1011
    invoke-virtual {p0}, Lcom/c/b/c/l;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1012
    iget-object v0, p0, Lcom/c/b/c/l;->o:Ljava/lang/String;

    iget-object v1, p1, Lcom/c/b/c/l;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1013
    if-nez v0, :cond_0

    .line 1017
    :cond_3
    invoke-virtual {p0}, Lcom/c/b/c/l;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/l;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1019
    if-nez v0, :cond_0

    .line 1022
    invoke-virtual {p0}, Lcom/c/b/c/l;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1023
    iget v0, p0, Lcom/c/b/c/l;->p:I

    iget v1, p1, Lcom/c/b/c/l;->p:I

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(II)I

    move-result v0

    .line 1025
    if-nez v0, :cond_0

    .line 1029
    :cond_4
    invoke-virtual {p0}, Lcom/c/b/c/l;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/l;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1031
    if-nez v0, :cond_0

    .line 1034
    invoke-virtual {p0}, Lcom/c/b/c/l;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1035
    iget-boolean v0, p0, Lcom/c/b/c/l;->q:Z

    iget-boolean v1, p1, Lcom/c/b/c/l;->q:Z

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(ZZ)I

    move-result v0

    .line 1037
    if-nez v0, :cond_0

    .line 1041
    :cond_5
    invoke-virtual {p0}, Lcom/c/b/c/l;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/l;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1043
    if-nez v0, :cond_0

    .line 1046
    invoke-virtual {p0}, Lcom/c/b/c/l;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1047
    iget-wide v0, p0, Lcom/c/b/c/l;->r:J

    iget-wide v2, p1, Lcom/c/b/c/l;->r:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/c/c;->a(JJ)I

    move-result v0

    .line 1049
    if-nez v0, :cond_0

    .line 1053
    :cond_6
    invoke-virtual {p0}, Lcom/c/b/c/l;->h()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/l;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1055
    if-nez v0, :cond_0

    .line 1058
    invoke-virtual {p0}, Lcom/c/b/c/l;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1059
    iget-wide v0, p0, Lcom/c/b/c/l;->s:J

    iget-wide v2, p1, Lcom/c/b/c/l;->s:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/c/c;->a(JJ)I

    move-result v0

    .line 1061
    if-nez v0, :cond_0

    .line 1065
    :cond_7
    invoke-virtual {p0}, Lcom/c/b/c/l;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/l;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1067
    if-nez v0, :cond_0

    .line 1070
    invoke-virtual {p0}, Lcom/c/b/c/l;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1071
    iget-object v0, p0, Lcom/c/b/c/l;->t:Lcom/c/b/c/p;

    iget-object v1, p1, Lcom/c/b/c/l;->t:Lcom/c/b/c/p;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 1073
    if-nez v0, :cond_0

    .line 1077
    :cond_8
    invoke-virtual {p0}, Lcom/c/b/c/l;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/l;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1079
    if-nez v0, :cond_0

    .line 1082
    invoke-virtual {p0}, Lcom/c/b/c/l;->j()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1083
    iget-boolean v0, p0, Lcom/c/b/c/l;->u:Z

    iget-boolean v1, p1, Lcom/c/b/c/l;->u:Z

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(ZZ)I

    move-result v0

    .line 1085
    if-nez v0, :cond_0

    .line 1089
    :cond_9
    invoke-virtual {p0}, Lcom/c/b/c/l;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/l;->k()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1091
    if-nez v0, :cond_0

    .line 1094
    invoke-virtual {p0}, Lcom/c/b/c/l;->k()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1095
    iget-object v0, p0, Lcom/c/b/c/l;->v:Ljava/lang/String;

    iget-object v1, p1, Lcom/c/b/c/l;->v:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1097
    if-nez v0, :cond_0

    .line 1101
    :cond_a
    invoke-virtual {p0}, Lcom/c/b/c/l;->l()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/l;->l()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1103
    if-nez v0, :cond_0

    .line 1106
    invoke-virtual {p0}, Lcom/c/b/c/l;->l()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1107
    iget-object v0, p0, Lcom/c/b/c/l;->w:Ljava/util/List;

    iget-object v1, p1, Lcom/c/b/c/l;->w:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 1109
    if-nez v0, :cond_0

    .line 1113
    :cond_b
    invoke-virtual {p0}, Lcom/c/b/c/l;->m()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/l;->m()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1115
    if-nez v0, :cond_0

    .line 1118
    invoke-virtual {p0}, Lcom/c/b/c/l;->m()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1119
    iget-object v0, p0, Lcom/c/b/c/l;->x:Ljava/util/List;

    iget-object v1, p1, Lcom/c/b/c/l;->x:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 1121
    if-nez v0, :cond_0

    .line 1125
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 507
    iput-wide p1, p0, Lcom/c/b/c/l;->s:J

    .line 508
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/c/b/c/l;->e(Z)V

    .line 509
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/c/b/c/l;->o:Ljava/lang/String;

    .line 407
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/c/b/c/v;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 668
    iput-object p1, p0, Lcom/c/b/c/l;->x:Ljava/util/List;

    .line 669
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 457
    iput-boolean p1, p0, Lcom/c/b/c/l;->q:Z

    .line 458
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/c/b/c/l;->c(Z)V

    .line 459
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/c/b/c/l;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/c/b/c/l;->o:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 583
    iput-object p1, p0, Lcom/c/b/c/l;->v:Ljava/lang/String;

    .line 584
    return-void
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/c/b/c/l;->y:[Z

    const/4 v1, 0x1

    aput-boolean p1, v0, v1

    .line 475
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 116
    check-cast p1, Lcom/c/b/c/l;

    invoke-virtual {p0, p1}, Lcom/c/b/c/l;->b(Lcom/c/b/c/l;)I

    move-result v0

    return v0
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/c/b/c/l;->y:[Z

    const/4 v1, 0x2

    aput-boolean p1, v0, v1

    .line 500
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/c/b/c/l;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Z)V
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/c/b/c/l;->y:[Z

    const/4 v1, 0x3

    aput-boolean p1, v0, v1

    .line 525
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/c/b/c/l;->y:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 858
    if-nez p1, :cond_1

    .line 862
    :cond_0
    :goto_0
    return v0

    .line 860
    :cond_1
    instance-of v1, p1, Lcom/c/b/c/l;

    if-eqz v1, :cond_0

    .line 861
    check-cast p1, Lcom/c/b/c/l;

    invoke-virtual {p0, p1}, Lcom/c/b/c/l;->a(Lcom/c/b/c/l;)Z

    move-result v0

    goto :goto_0
.end method

.method public f(Z)V
    .locals 1

    .prologue
    .line 558
    iput-boolean p1, p0, Lcom/c/b/c/l;->u:Z

    .line 559
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/c/b/c/l;->g(Z)V

    .line 560
    return-void
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/c/b/c/l;->y:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public g(Z)V
    .locals 2

    .prologue
    .line 575
    iget-object v0, p0, Lcom/c/b/c/l;->y:[Z

    const/4 v1, 0x4

    aput-boolean p1, v0, v1

    .line 576
    return-void
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/c/b/c/l;->y:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/c/b/c/l;->y:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 984
    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/c/b/c/l;->t:Lcom/c/b/c/p;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/c/b/c/l;->y:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/c/b/c/l;->v:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/c/b/c/l;->w:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/c/b/c/l;->x:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()V
    .locals 0

    .prologue
    .line 1531
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1390
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1392
    :try_start_0
    invoke-virtual {p0}, Lcom/c/b/c/l;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1393
    const-string v0, "guid"

    iget-object v2, p0, Lcom/c/b/c/l;->n:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1395
    :cond_0
    invoke-virtual {p0}, Lcom/c/b/c/l;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1396
    const-string v0, "name"

    iget-object v2, p0, Lcom/c/b/c/l;->o:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1398
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/c/l;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1399
    const-string v0, "updateSequenceNum"

    iget v2, p0, Lcom/c/b/c/l;->p:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1401
    :cond_2
    invoke-virtual {p0}, Lcom/c/b/c/l;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1402
    const-string v0, "defaultNotebook"

    iget-boolean v2, p0, Lcom/c/b/c/l;->q:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1404
    :cond_3
    invoke-virtual {p0}, Lcom/c/b/c/l;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1405
    const-string v0, "serviceCreated"

    iget-wide v2, p0, Lcom/c/b/c/l;->r:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1407
    :cond_4
    invoke-virtual {p0}, Lcom/c/b/c/l;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1408
    const-string v0, "serviceUpdated"

    iget-wide v2, p0, Lcom/c/b/c/l;->s:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1410
    :cond_5
    invoke-virtual {p0}, Lcom/c/b/c/l;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1411
    const-string v0, "publishing"

    iget-object v2, p0, Lcom/c/b/c/l;->t:Lcom/c/b/c/p;

    invoke-virtual {v2}, Lcom/c/b/c/p;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1413
    :cond_6
    invoke-virtual {p0}, Lcom/c/b/c/l;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1414
    const-string v0, "published"

    iget-boolean v2, p0, Lcom/c/b/c/l;->u:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1416
    :cond_7
    invoke-virtual {p0}, Lcom/c/b/c/l;->k()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1417
    const-string v0, "stack"

    iget-object v2, p0, Lcom/c/b/c/l;->v:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1419
    :cond_8
    invoke-virtual {p0}, Lcom/c/b/c/l;->l()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1420
    const-string v0, "sharedNotebookIds"

    iget-object v2, p0, Lcom/c/b/c/l;->w:Ljava/util/List;

    invoke-static {v2}, Lcom/c/b/c/v;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1422
    :cond_9
    invoke-virtual {p0}, Lcom/c/b/c/l;->m()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1423
    const-string v0, "sharedNotebooks"

    iget-object v2, p0, Lcom/c/b/c/l;->x:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1429
    :cond_a
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1425
    :catch_0
    move-exception v0

    .line 1426
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
