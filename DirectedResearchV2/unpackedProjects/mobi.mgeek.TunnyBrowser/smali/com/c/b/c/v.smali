.class public Lcom/c/b/c/v;
.super Ljava/lang/Object;
.source "SharedNotebook.java"

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
        "Lcom/c/b/c/v;",
        "Lcom/c/b/c/w;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/c/b/c/w;",
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


# instance fields
.field private m:J

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Z

.field private s:J

.field private t:J

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v5, 0x8

    const/16 v8, 0xa

    const/16 v7, 0xb

    const/4 v6, 0x2

    .line 73
    new-instance v0, Lorg/apache/c/b/j;

    const-string v1, "SharedNotebook"

    invoke-direct {v0, v1}, Lorg/apache/c/b/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/c/b/c/v;->b:Lorg/apache/c/b/j;

    .line 86
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "id"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/v;->c:Lorg/apache/c/b/b;

    .line 88
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "userId"

    invoke-direct {v0, v1, v5, v6}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/v;->d:Lorg/apache/c/b/b;

    .line 90
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "notebookGuid"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/v;->e:Lorg/apache/c/b/b;

    .line 92
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "email"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/v;->f:Lorg/apache/c/b/b;

    .line 94
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "notebookModifiable"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/v;->g:Lorg/apache/c/b/b;

    .line 96
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "requireLogin"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/v;->h:Lorg/apache/c/b/b;

    .line 98
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "serviceCreated"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/v;->i:Lorg/apache/c/b/b;

    .line 100
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "serviceUpdated"

    invoke-direct {v0, v1, v8, v8}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/v;->j:Lorg/apache/c/b/b;

    .line 102
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "shareKey"

    invoke-direct {v0, v1, v7, v5}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/v;->k:Lorg/apache/c/b/b;

    .line 104
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "username"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/v;->l:Lorg/apache/c/b/b;

    .line 217
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/c/b/c/w;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 219
    sget-object v1, Lcom/c/b/c/w;->a:Lcom/c/b/c/w;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "id"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v8}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v1, Lcom/c/b/c/w;->b:Lcom/c/b/c/w;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "userId"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v5}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v1, Lcom/c/b/c/w;->c:Lcom/c/b/c/w;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "notebookGuid"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v7}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v1, Lcom/c/b/c/w;->d:Lcom/c/b/c/w;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "email"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v7}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v1, Lcom/c/b/c/w;->e:Lcom/c/b/c/w;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "notebookModifiable"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v6}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v1, Lcom/c/b/c/w;->f:Lcom/c/b/c/w;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "requireLogin"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v6}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v1, Lcom/c/b/c/w;->g:Lcom/c/b/c/w;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "serviceCreated"

    new-instance v4, Lorg/apache/c/a/c;

    const-string v5, "Timestamp"

    invoke-direct {v4, v8, v5}, Lorg/apache/c/a/c;-><init>(BLjava/lang/String;)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v1, Lcom/c/b/c/w;->h:Lcom/c/b/c/w;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "serviceUpdated"

    new-instance v4, Lorg/apache/c/a/c;

    const-string v5, "Timestamp"

    invoke-direct {v4, v8, v5}, Lorg/apache/c/a/c;-><init>(BLjava/lang/String;)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v1, Lcom/c/b/c/w;->i:Lcom/c/b/c/w;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "shareKey"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v7}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v1, Lcom/c/b/c/w;->j:Lcom/c/b/c/w;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "username"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v7}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/c/b/c/v;->a:Ljava/util/Map;

    .line 250
    const-class v0, Lcom/c/b/c/v;

    sget-object v1, Lcom/c/b/c/v;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/c/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 251
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    const/4 v0, 0x6

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/c/b/c/v;->w:[Z

    .line 254
    return-void
.end method

.method private static a(Lorg/json/JSONObject;)Lcom/c/b/c/v;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1164
    if-eqz p0, :cond_6

    .line 1165
    new-instance v0, Lcom/c/b/c/v;

    invoke-direct {v0}, Lcom/c/b/c/v;-><init>()V

    .line 1166
    const-string v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1167
    const-string v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/c/b/c/v;->a(J)V

    .line 1169
    :cond_0
    const-string v2, "userId"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1170
    const-string v2, "userId"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/c/b/c/v;->a(I)V

    .line 1172
    :cond_1
    const-string v2, "notebookGuid"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/c/b/c/v;->a(Ljava/lang/String;)V

    .line 1174
    const-string v2, "email"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/b/c/v;->b(Ljava/lang/String;)V

    .line 1175
    const-string v1, "notebookModifiable"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1176
    const-string v1, "notebookModifiable"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/c/b/c/v;->c(Z)V

    .line 1179
    :cond_2
    const-string v1, "requireLogin"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1180
    const-string v1, "requireLogin"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/c/b/c/v;->e(Z)V

    .line 1183
    :cond_3
    const-string v1, "serviceCreated"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1184
    const-string v1, "serviceCreated"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/c/b/c/v;->b(J)V

    .line 1187
    :cond_4
    const-string v1, "serviceUpdated"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1188
    const-string v1, "serviceUpdated"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/c/b/c/v;->c(J)V

    .line 1191
    :cond_5
    const-string v1, "shareKey"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/b/c/v;->c(Ljava/lang/String;)V

    .line 1192
    const-string v1, "username"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/b/c/v;->d(Ljava/lang/String;)V

    .line 1195
    :goto_0
    return-object v0

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1124
    if-eqz p0, :cond_1

    .line 1125
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1126
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1127
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1129
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1131
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1135
    if-eqz p0, :cond_1

    .line 1136
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1137
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1138
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1142
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static b(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/c/b/c/v;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1147
    if-eqz p0, :cond_2

    .line 1148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1149
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1150
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1151
    if-eqz v2, :cond_0

    .line 1152
    invoke-static {v2}, Lcom/c/b/c/v;->a(Lorg/json/JSONObject;)Lcom/c/b/c/v;

    move-result-object v2

    .line 1153
    if-eqz v2, :cond_0

    .line 1154
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1149
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1160
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 335
    iput p1, p0, Lcom/c/b/c/v;->n:I

    .line 336
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/c/b/c/v;->b(Z)V

    .line 337
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 310
    iput-wide p1, p0, Lcom/c/b/c/v;->m:J

    .line 311
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/c/b/c/v;->a(Z)V

    .line 312
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/c/b/c/v;->o:Ljava/lang/String;

    .line 361
    return-void
.end method

.method public a(Lorg/apache/c/b/f;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/16 v5, 0xa

    const/16 v4, 0xb

    const/4 v3, 0x1

    .line 965
    invoke-virtual {p1}, Lorg/apache/c/b/f;->j()Lorg/apache/c/b/j;

    .line 967
    :goto_0
    invoke-virtual {p1}, Lorg/apache/c/b/f;->l()Lorg/apache/c/b/b;

    move-result-object v0

    .line 968
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-nez v1, :cond_0

    .line 1053
    invoke-virtual {p1}, Lorg/apache/c/b/f;->k()V

    .line 1054
    invoke-virtual {p0}, Lcom/c/b/c/v;->k()V

    .line 1055
    return-void

    .line 971
    :cond_0
    iget-short v1, v0, Lorg/apache/c/b/b;->c:S

    packed-switch v1, :pswitch_data_0

    .line 1049
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    .line 1051
    :goto_1
    invoke-virtual {p1}, Lorg/apache/c/b/f;->m()V

    goto :goto_0

    .line 973
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v5, :cond_1

    .line 974
    invoke-virtual {p1}, Lorg/apache/c/b/f;->x()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/c/b/c/v;->m:J

    .line 975
    invoke-virtual {p0, v3}, Lcom/c/b/c/v;->a(Z)V

    goto :goto_1

    .line 977
    :cond_1
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 981
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 982
    invoke-virtual {p1}, Lorg/apache/c/b/f;->w()I

    move-result v0

    iput v0, p0, Lcom/c/b/c/v;->n:I

    .line 983
    invoke-virtual {p0, v3}, Lcom/c/b/c/v;->b(Z)V

    goto :goto_1

    .line 985
    :cond_2
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 989
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v4, :cond_3

    .line 990
    invoke-virtual {p1}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/c/v;->o:Ljava/lang/String;

    goto :goto_1

    .line 992
    :cond_3
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 996
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v4, :cond_4

    .line 997
    invoke-virtual {p1}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/c/v;->p:Ljava/lang/String;

    goto :goto_1

    .line 999
    :cond_4
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 1003
    :pswitch_4
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v6, :cond_5

    .line 1004
    invoke-virtual {p1}, Lorg/apache/c/b/f;->t()Z

    move-result v0

    iput-boolean v0, p0, Lcom/c/b/c/v;->q:Z

    .line 1005
    invoke-virtual {p0, v3}, Lcom/c/b/c/v;->d(Z)V

    goto :goto_1

    .line 1007
    :cond_5
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 1011
    :pswitch_5
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v6, :cond_6

    .line 1012
    invoke-virtual {p1}, Lorg/apache/c/b/f;->t()Z

    move-result v0

    iput-boolean v0, p0, Lcom/c/b/c/v;->r:Z

    .line 1013
    invoke-virtual {p0, v3}, Lcom/c/b/c/v;->f(Z)V

    goto :goto_1

    .line 1015
    :cond_6
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 1019
    :pswitch_6
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v5, :cond_7

    .line 1020
    invoke-virtual {p1}, Lorg/apache/c/b/f;->x()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/c/b/c/v;->s:J

    .line 1021
    invoke-virtual {p0, v3}, Lcom/c/b/c/v;->g(Z)V

    goto/16 :goto_1

    .line 1023
    :cond_7
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto/16 :goto_1

    .line 1027
    :pswitch_7
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v5, :cond_8

    .line 1028
    invoke-virtual {p1}, Lorg/apache/c/b/f;->x()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/c/b/c/v;->t:J

    .line 1029
    invoke-virtual {p0, v3}, Lcom/c/b/c/v;->h(Z)V

    goto/16 :goto_1

    .line 1031
    :cond_8
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto/16 :goto_1

    .line 1035
    :pswitch_8
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v4, :cond_9

    .line 1036
    invoke-virtual {p1}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/c/v;->u:Ljava/lang/String;

    goto/16 :goto_1

    .line 1038
    :cond_9
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto/16 :goto_1

    .line 1042
    :pswitch_9
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v4, :cond_a

    .line 1043
    invoke-virtual {p1}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/c/v;->v:Ljava/lang/String;

    goto/16 :goto_1

    .line 1045
    :cond_a
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto/16 :goto_1

    .line 971
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_7
    .end packed-switch
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/c/b/c/v;->w:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 328
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/c/b/c/v;->w:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public a(Lcom/c/b/c/v;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 723
    if-nez p1, :cond_1

    .line 822
    :cond_0
    :goto_0
    return v0

    .line 726
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/c/v;->a()Z

    move-result v1

    .line 727
    invoke-virtual {p1}, Lcom/c/b/c/v;->a()Z

    move-result v2

    .line 728
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 729
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 731
    iget-wide v1, p0, Lcom/c/b/c/v;->m:J

    iget-wide v3, p1, Lcom/c/b/c/v;->m:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 735
    :cond_3
    invoke-virtual {p0}, Lcom/c/b/c/v;->b()Z

    move-result v1

    .line 736
    invoke-virtual {p1}, Lcom/c/b/c/v;->b()Z

    move-result v2

    .line 737
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 738
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 740
    iget v1, p0, Lcom/c/b/c/v;->n:I

    iget v2, p1, Lcom/c/b/c/v;->n:I

    if-ne v1, v2, :cond_0

    .line 744
    :cond_5
    invoke-virtual {p0}, Lcom/c/b/c/v;->c()Z

    move-result v1

    .line 745
    invoke-virtual {p1}, Lcom/c/b/c/v;->c()Z

    move-result v2

    .line 746
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 747
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 749
    iget-object v1, p0, Lcom/c/b/c/v;->o:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/b/c/v;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 753
    :cond_7
    invoke-virtual {p0}, Lcom/c/b/c/v;->d()Z

    move-result v1

    .line 754
    invoke-virtual {p1}, Lcom/c/b/c/v;->d()Z

    move-result v2

    .line 755
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 756
    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 758
    iget-object v1, p0, Lcom/c/b/c/v;->p:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/b/c/v;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 762
    :cond_9
    invoke-virtual {p0}, Lcom/c/b/c/v;->e()Z

    move-result v1

    .line 764
    invoke-virtual {p1}, Lcom/c/b/c/v;->e()Z

    move-result v2

    .line 766
    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    .line 767
    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 769
    iget-boolean v1, p0, Lcom/c/b/c/v;->q:Z

    iget-boolean v2, p1, Lcom/c/b/c/v;->q:Z

    if-ne v1, v2, :cond_0

    .line 773
    :cond_b
    invoke-virtual {p0}, Lcom/c/b/c/v;->f()Z

    move-result v1

    .line 774
    invoke-virtual {p1}, Lcom/c/b/c/v;->f()Z

    move-result v2

    .line 775
    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    .line 776
    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 778
    iget-boolean v1, p0, Lcom/c/b/c/v;->r:Z

    iget-boolean v2, p1, Lcom/c/b/c/v;->r:Z

    if-ne v1, v2, :cond_0

    .line 782
    :cond_d
    invoke-virtual {p0}, Lcom/c/b/c/v;->g()Z

    move-result v1

    .line 784
    invoke-virtual {p1}, Lcom/c/b/c/v;->g()Z

    move-result v2

    .line 786
    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    .line 787
    :cond_e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 789
    iget-wide v1, p0, Lcom/c/b/c/v;->s:J

    iget-wide v3, p1, Lcom/c/b/c/v;->s:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 793
    :cond_f
    invoke-virtual {p0}, Lcom/c/b/c/v;->h()Z

    move-result v1

    .line 795
    invoke-virtual {p1}, Lcom/c/b/c/v;->h()Z

    move-result v2

    .line 797
    if-nez v1, :cond_10

    if-eqz v2, :cond_11

    .line 798
    :cond_10
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 800
    iget-wide v1, p0, Lcom/c/b/c/v;->t:J

    iget-wide v3, p1, Lcom/c/b/c/v;->t:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 804
    :cond_11
    invoke-virtual {p0}, Lcom/c/b/c/v;->i()Z

    move-result v1

    .line 805
    invoke-virtual {p1}, Lcom/c/b/c/v;->i()Z

    move-result v2

    .line 806
    if-nez v1, :cond_12

    if-eqz v2, :cond_13

    .line 807
    :cond_12
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 809
    iget-object v1, p0, Lcom/c/b/c/v;->u:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/b/c/v;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 813
    :cond_13
    invoke-virtual {p0}, Lcom/c/b/c/v;->j()Z

    move-result v1

    .line 814
    invoke-virtual {p1}, Lcom/c/b/c/v;->j()Z

    move-result v2

    .line 815
    if-nez v1, :cond_14

    if-eqz v2, :cond_15

    .line 816
    :cond_14
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 818
    iget-object v1, p0, Lcom/c/b/c/v;->v:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/b/c/v;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 822
    :cond_15
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public b(Lcom/c/b/c/v;)I
    .locals 4

    .prologue
    .line 830
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 831
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

    .line 956
    :cond_0
    :goto_0
    return v0

    .line 837
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/c/v;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/v;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 839
    if-nez v0, :cond_0

    .line 842
    invoke-virtual {p0}, Lcom/c/b/c/v;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 843
    iget-wide v0, p0, Lcom/c/b/c/v;->m:J

    iget-wide v2, p1, Lcom/c/b/c/v;->m:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/c/c;->a(JJ)I

    move-result v0

    .line 844
    if-nez v0, :cond_0

    .line 848
    :cond_2
    invoke-virtual {p0}, Lcom/c/b/c/v;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/v;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 850
    if-nez v0, :cond_0

    .line 853
    invoke-virtual {p0}, Lcom/c/b/c/v;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 854
    iget v0, p0, Lcom/c/b/c/v;->n:I

    iget v1, p1, Lcom/c/b/c/v;->n:I

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(II)I

    move-result v0

    .line 856
    if-nez v0, :cond_0

    .line 860
    :cond_3
    invoke-virtual {p0}, Lcom/c/b/c/v;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/v;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 862
    if-nez v0, :cond_0

    .line 865
    invoke-virtual {p0}, Lcom/c/b/c/v;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 866
    iget-object v0, p0, Lcom/c/b/c/v;->o:Ljava/lang/String;

    iget-object v1, p1, Lcom/c/b/c/v;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 868
    if-nez v0, :cond_0

    .line 872
    :cond_4
    invoke-virtual {p0}, Lcom/c/b/c/v;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/v;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 874
    if-nez v0, :cond_0

    .line 877
    invoke-virtual {p0}, Lcom/c/b/c/v;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 878
    iget-object v0, p0, Lcom/c/b/c/v;->p:Ljava/lang/String;

    iget-object v1, p1, Lcom/c/b/c/v;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 880
    if-nez v0, :cond_0

    .line 884
    :cond_5
    invoke-virtual {p0}, Lcom/c/b/c/v;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/v;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 886
    if-nez v0, :cond_0

    .line 889
    invoke-virtual {p0}, Lcom/c/b/c/v;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 890
    iget-boolean v0, p0, Lcom/c/b/c/v;->q:Z

    iget-boolean v1, p1, Lcom/c/b/c/v;->q:Z

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(ZZ)I

    move-result v0

    .line 892
    if-nez v0, :cond_0

    .line 896
    :cond_6
    invoke-virtual {p0}, Lcom/c/b/c/v;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/v;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 898
    if-nez v0, :cond_0

    .line 901
    invoke-virtual {p0}, Lcom/c/b/c/v;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 902
    iget-boolean v0, p0, Lcom/c/b/c/v;->r:Z

    iget-boolean v1, p1, Lcom/c/b/c/v;->r:Z

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(ZZ)I

    move-result v0

    .line 904
    if-nez v0, :cond_0

    .line 908
    :cond_7
    invoke-virtual {p0}, Lcom/c/b/c/v;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/v;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 910
    if-nez v0, :cond_0

    .line 913
    invoke-virtual {p0}, Lcom/c/b/c/v;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 914
    iget-wide v0, p0, Lcom/c/b/c/v;->s:J

    iget-wide v2, p1, Lcom/c/b/c/v;->s:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/c/c;->a(JJ)I

    move-result v0

    .line 916
    if-nez v0, :cond_0

    .line 920
    :cond_8
    invoke-virtual {p0}, Lcom/c/b/c/v;->h()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/v;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 922
    if-nez v0, :cond_0

    .line 925
    invoke-virtual {p0}, Lcom/c/b/c/v;->h()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 926
    iget-wide v0, p0, Lcom/c/b/c/v;->t:J

    iget-wide v2, p1, Lcom/c/b/c/v;->t:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/c/c;->a(JJ)I

    move-result v0

    .line 928
    if-nez v0, :cond_0

    .line 932
    :cond_9
    invoke-virtual {p0}, Lcom/c/b/c/v;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/v;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 934
    if-nez v0, :cond_0

    .line 937
    invoke-virtual {p0}, Lcom/c/b/c/v;->i()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 938
    iget-object v0, p0, Lcom/c/b/c/v;->u:Ljava/lang/String;

    iget-object v1, p1, Lcom/c/b/c/v;->u:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 940
    if-nez v0, :cond_0

    .line 944
    :cond_a
    invoke-virtual {p0}, Lcom/c/b/c/v;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/v;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 946
    if-nez v0, :cond_0

    .line 949
    invoke-virtual {p0}, Lcom/c/b/c/v;->j()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 950
    iget-object v0, p0, Lcom/c/b/c/v;->v:Ljava/lang/String;

    iget-object v1, p1, Lcom/c/b/c/v;->v:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 952
    if-nez v0, :cond_0

    .line 956
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 462
    iput-wide p1, p0, Lcom/c/b/c/v;->s:J

    .line 463
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/c/b/c/v;->g(Z)V

    .line 464
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/c/b/c/v;->p:Ljava/lang/String;

    .line 387
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/c/b/c/v;->w:[Z

    const/4 v1, 0x1

    aput-boolean p1, v0, v1

    .line 353
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/c/b/c/v;->w:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public c(J)V
    .locals 1

    .prologue
    .line 487
    iput-wide p1, p0, Lcom/c/b/c/v;->t:J

    .line 488
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/c/b/c/v;->h(Z)V

    .line 489
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Lcom/c/b/c/v;->u:Ljava/lang/String;

    .line 513
    return-void
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 412
    iput-boolean p1, p0, Lcom/c/b/c/v;->q:Z

    .line 413
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/c/b/c/v;->d(Z)V

    .line 414
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/c/b/c/v;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 70
    check-cast p1, Lcom/c/b/c/v;

    invoke-virtual {p0, p1}, Lcom/c/b/c/v;->b(Lcom/c/b/c/v;)I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lcom/c/b/c/v;->v:Ljava/lang/String;

    .line 539
    return-void
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/c/b/c/v;->w:[Z

    const/4 v1, 0x2

    aput-boolean p1, v0, v1

    .line 430
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/c/b/c/v;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Z)V
    .locals 1

    .prologue
    .line 437
    iput-boolean p1, p0, Lcom/c/b/c/v;->r:Z

    .line 438
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/c/b/c/v;->f(Z)V

    .line 439
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/c/b/c/v;->w:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 715
    if-nez p1, :cond_1

    .line 719
    :cond_0
    :goto_0
    return v0

    .line 717
    :cond_1
    instance-of v1, p1, Lcom/c/b/c/v;

    if-eqz v1, :cond_0

    .line 718
    check-cast p1, Lcom/c/b/c/v;

    invoke-virtual {p0, p1}, Lcom/c/b/c/v;->a(Lcom/c/b/c/v;)Z

    move-result v0

    goto :goto_0
.end method

.method public f(Z)V
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/c/b/c/v;->w:[Z

    const/4 v1, 0x3

    aput-boolean p1, v0, v1

    .line 455
    return-void
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/c/b/c/v;->w:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    return v0
.end method

.method public g(Z)V
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/c/b/c/v;->w:[Z

    const/4 v1, 0x4

    aput-boolean p1, v0, v1

    .line 480
    return-void
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/c/b/c/v;->w:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    return v0
.end method

.method public h(Z)V
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/c/b/c/v;->w:[Z

    const/4 v1, 0x5

    aput-boolean p1, v0, v1

    .line 505
    return-void
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/c/b/c/v;->w:[Z

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 826
    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/c/b/c/v;->u:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/c/b/c/v;->v:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()V
    .locals 0

    .prologue
    .line 1323
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1199
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1201
    :try_start_0
    invoke-virtual {p0}, Lcom/c/b/c/v;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1202
    const-string v0, "id"

    iget-wide v2, p0, Lcom/c/b/c/v;->m:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1204
    :cond_0
    invoke-virtual {p0}, Lcom/c/b/c/v;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1205
    const-string v0, "userId"

    iget v2, p0, Lcom/c/b/c/v;->n:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1207
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/c/v;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1208
    const-string v0, "notebookGuid"

    iget-object v2, p0, Lcom/c/b/c/v;->o:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1210
    :cond_2
    invoke-virtual {p0}, Lcom/c/b/c/v;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1211
    const-string v0, "email"

    iget-object v2, p0, Lcom/c/b/c/v;->p:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1213
    :cond_3
    invoke-virtual {p0}, Lcom/c/b/c/v;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1214
    const-string v0, "notebookModifiable"

    iget-boolean v2, p0, Lcom/c/b/c/v;->q:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1216
    :cond_4
    invoke-virtual {p0}, Lcom/c/b/c/v;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1217
    const-string v0, "requireLogin"

    iget-boolean v2, p0, Lcom/c/b/c/v;->r:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1219
    :cond_5
    invoke-virtual {p0}, Lcom/c/b/c/v;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1220
    const-string v0, "serviceCreated"

    iget-wide v2, p0, Lcom/c/b/c/v;->s:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1222
    :cond_6
    invoke-virtual {p0}, Lcom/c/b/c/v;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1223
    const-string v0, "serviceUpdated"

    iget-wide v2, p0, Lcom/c/b/c/v;->t:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1225
    :cond_7
    invoke-virtual {p0}, Lcom/c/b/c/v;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1226
    const-string v0, "shareKey"

    iget-object v2, p0, Lcom/c/b/c/v;->u:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1228
    :cond_8
    invoke-virtual {p0}, Lcom/c/b/c/v;->j()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1229
    const-string v0, "username"

    iget-object v2, p0, Lcom/c/b/c/v;->v:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1235
    :cond_9
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1231
    :catch_0
    move-exception v0

    .line 1232
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
