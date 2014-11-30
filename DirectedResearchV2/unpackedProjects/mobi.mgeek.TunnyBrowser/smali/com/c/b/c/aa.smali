.class public final enum Lcom/c/b/c/aa;
.super Ljava/lang/Enum;
.source "User.java"


# static fields
.field public static final enum a:Lcom/c/b/c/aa;

.field public static final enum b:Lcom/c/b/c/aa;

.field public static final enum c:Lcom/c/b/c/aa;

.field public static final enum d:Lcom/c/b/c/aa;

.field public static final enum e:Lcom/c/b/c/aa;

.field public static final enum f:Lcom/c/b/c/aa;

.field public static final enum g:Lcom/c/b/c/aa;

.field public static final enum h:Lcom/c/b/c/aa;

.field public static final enum i:Lcom/c/b/c/aa;

.field public static final enum j:Lcom/c/b/c/aa;

.field public static final enum k:Lcom/c/b/c/aa;

.field public static final enum l:Lcom/c/b/c/aa;

.field public static final enum m:Lcom/c/b/c/aa;

.field private static final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/c/b/c/aa;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic q:[Lcom/c/b/c/aa;


# instance fields
.field private final o:S

.field private final p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 151
    new-instance v0, Lcom/c/b/c/aa;

    const-string v1, "ID"

    const/4 v2, 0x0

    const-string v3, "id"

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/c/b/c/aa;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/aa;->a:Lcom/c/b/c/aa;

    .line 152
    new-instance v0, Lcom/c/b/c/aa;

    const-string v1, "USERNAME"

    const-string v2, "username"

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/c/b/c/aa;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/aa;->b:Lcom/c/b/c/aa;

    .line 153
    new-instance v0, Lcom/c/b/c/aa;

    const-string v1, "EMAIL"

    const-string v2, "email"

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/c/b/c/aa;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/aa;->c:Lcom/c/b/c/aa;

    .line 154
    new-instance v0, Lcom/c/b/c/aa;

    const-string v1, "NAME"

    const-string v2, "name"

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/c/b/c/aa;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/aa;->d:Lcom/c/b/c/aa;

    .line 155
    new-instance v0, Lcom/c/b/c/aa;

    const-string v1, "TIMEZONE"

    const-string v2, "timezone"

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/c/b/c/aa;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/aa;->e:Lcom/c/b/c/aa;

    .line 160
    new-instance v0, Lcom/c/b/c/aa;

    const-string v1, "PRIVILEGE"

    const/4 v2, 0x5

    const/4 v3, 0x7

    const-string v4, "privilege"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/c/b/c/aa;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/aa;->f:Lcom/c/b/c/aa;

    .line 161
    new-instance v0, Lcom/c/b/c/aa;

    const-string v1, "CREATED"

    const/16 v2, 0x9

    const-string v3, "created"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/c/b/c/aa;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/aa;->g:Lcom/c/b/c/aa;

    .line 162
    new-instance v0, Lcom/c/b/c/aa;

    const-string v1, "UPDATED"

    const/4 v2, 0x7

    const/16 v3, 0xa

    const-string v4, "updated"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/c/b/c/aa;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/aa;->h:Lcom/c/b/c/aa;

    .line 163
    new-instance v0, Lcom/c/b/c/aa;

    const-string v1, "DELETED"

    const/16 v2, 0x8

    const/16 v3, 0xb

    const-string v4, "deleted"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/c/b/c/aa;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/aa;->i:Lcom/c/b/c/aa;

    .line 164
    new-instance v0, Lcom/c/b/c/aa;

    const-string v1, "ACTIVE"

    const/16 v2, 0x9

    const/16 v3, 0xd

    const-string v4, "active"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/c/b/c/aa;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/aa;->j:Lcom/c/b/c/aa;

    .line 165
    new-instance v0, Lcom/c/b/c/aa;

    const-string v1, "SHARD_ID"

    const/16 v2, 0xa

    const/16 v3, 0xe

    const-string v4, "shardId"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/c/b/c/aa;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/aa;->k:Lcom/c/b/c/aa;

    .line 166
    new-instance v0, Lcom/c/b/c/aa;

    const-string v1, "ATTRIBUTES"

    const/16 v2, 0xb

    const/16 v3, 0xf

    const-string v4, "attributes"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/c/b/c/aa;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/aa;->l:Lcom/c/b/c/aa;

    .line 167
    new-instance v0, Lcom/c/b/c/aa;

    const-string v1, "ACCOUNTING"

    const/16 v2, 0xc

    const/16 v3, 0x10

    const-string v4, "accounting"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/c/b/c/aa;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/aa;->m:Lcom/c/b/c/aa;

    .line 150
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/c/b/c/aa;

    const/4 v1, 0x0

    sget-object v2, Lcom/c/b/c/aa;->a:Lcom/c/b/c/aa;

    aput-object v2, v0, v1

    sget-object v1, Lcom/c/b/c/aa;->b:Lcom/c/b/c/aa;

    aput-object v1, v0, v5

    sget-object v1, Lcom/c/b/c/aa;->c:Lcom/c/b/c/aa;

    aput-object v1, v0, v6

    sget-object v1, Lcom/c/b/c/aa;->d:Lcom/c/b/c/aa;

    aput-object v1, v0, v7

    sget-object v1, Lcom/c/b/c/aa;->e:Lcom/c/b/c/aa;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/c/b/c/aa;->f:Lcom/c/b/c/aa;

    aput-object v2, v0, v1

    sget-object v1, Lcom/c/b/c/aa;->g:Lcom/c/b/c/aa;

    aput-object v1, v0, v9

    const/4 v1, 0x7

    sget-object v2, Lcom/c/b/c/aa;->h:Lcom/c/b/c/aa;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/c/b/c/aa;->i:Lcom/c/b/c/aa;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/c/b/c/aa;->j:Lcom/c/b/c/aa;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/c/b/c/aa;->k:Lcom/c/b/c/aa;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/c/b/c/aa;->l:Lcom/c/b/c/aa;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/c/b/c/aa;->m:Lcom/c/b/c/aa;

    aput-object v2, v0, v1

    sput-object v0, Lcom/c/b/c/aa;->q:[Lcom/c/b/c/aa;

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/c/b/c/aa;->n:Ljava/util/Map;

    .line 172
    const-class v0, Lcom/c/b/c/aa;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/b/c/aa;

    .line 173
    sget-object v2, Lcom/c/b/c/aa;->n:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/c/b/c/aa;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 175
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 233
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 234
    iput-short p3, p0, Lcom/c/b/c/aa;->o:S

    .line 235
    iput-object p4, p0, Lcom/c/b/c/aa;->p:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/c/b/c/aa;
    .locals 1

    .prologue
    .line 150
    const-class v0, Lcom/c/b/c/aa;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/c/b/c/aa;

    return-object v0
.end method

.method public static values()[Lcom/c/b/c/aa;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/c/b/c/aa;->q:[Lcom/c/b/c/aa;

    invoke-virtual {v0}, [Lcom/c/b/c/aa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/b/c/aa;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/c/b/c/aa;->p:Ljava/lang/String;

    return-object v0
.end method
