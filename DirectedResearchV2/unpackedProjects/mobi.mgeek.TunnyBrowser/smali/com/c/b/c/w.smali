.class public final enum Lcom/c/b/c/w;
.super Ljava/lang/Enum;
.source "SharedNotebook.java"


# static fields
.field public static final enum a:Lcom/c/b/c/w;

.field public static final enum b:Lcom/c/b/c/w;

.field public static final enum c:Lcom/c/b/c/w;

.field public static final enum d:Lcom/c/b/c/w;

.field public static final enum e:Lcom/c/b/c/w;

.field public static final enum f:Lcom/c/b/c/w;

.field public static final enum g:Lcom/c/b/c/w;

.field public static final enum h:Lcom/c/b/c/w;

.field public static final enum i:Lcom/c/b/c/w;

.field public static final enum j:Lcom/c/b/c/w;

.field private static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/c/b/c/w;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic n:[Lcom/c/b/c/w;


# instance fields
.field private final l:S

.field private final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 123
    new-instance v0, Lcom/c/b/c/w;

    const-string v1, "ID"

    const/4 v2, 0x0

    const-string v3, "id"

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/c/b/c/w;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/w;->a:Lcom/c/b/c/w;

    new-instance v0, Lcom/c/b/c/w;

    const-string v1, "USER_ID"

    const-string v2, "userId"

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/c/b/c/w;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/w;->b:Lcom/c/b/c/w;

    new-instance v0, Lcom/c/b/c/w;

    const-string v1, "NOTEBOOK_GUID"

    const-string v2, "notebookGuid"

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/c/b/c/w;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/w;->c:Lcom/c/b/c/w;

    .line 124
    new-instance v0, Lcom/c/b/c/w;

    const-string v1, "EMAIL"

    const-string v2, "email"

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/c/b/c/w;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/w;->d:Lcom/c/b/c/w;

    new-instance v0, Lcom/c/b/c/w;

    const-string v1, "NOTEBOOK_MODIFIABLE"

    const-string v2, "notebookModifiable"

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/c/b/c/w;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/w;->e:Lcom/c/b/c/w;

    .line 125
    new-instance v0, Lcom/c/b/c/w;

    const-string v1, "REQUIRE_LOGIN"

    const/4 v2, 0x6

    const-string v3, "requireLogin"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/c/b/c/w;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/w;->f:Lcom/c/b/c/w;

    .line 126
    new-instance v0, Lcom/c/b/c/w;

    const-string v1, "SERVICE_CREATED"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "serviceCreated"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/c/b/c/w;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/w;->g:Lcom/c/b/c/w;

    new-instance v0, Lcom/c/b/c/w;

    const-string v1, "SERVICE_UPDATED"

    const/4 v2, 0x7

    const/16 v3, 0xa

    const-string v4, "serviceUpdated"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/c/b/c/w;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/w;->h:Lcom/c/b/c/w;

    .line 127
    new-instance v0, Lcom/c/b/c/w;

    const-string v1, "SHARE_KEY"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const-string v4, "shareKey"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/c/b/c/w;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/w;->i:Lcom/c/b/c/w;

    new-instance v0, Lcom/c/b/c/w;

    const-string v1, "USERNAME"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const-string v4, "username"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/c/b/c/w;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/w;->j:Lcom/c/b/c/w;

    .line 122
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/c/b/c/w;

    const/4 v1, 0x0

    sget-object v2, Lcom/c/b/c/w;->a:Lcom/c/b/c/w;

    aput-object v2, v0, v1

    sget-object v1, Lcom/c/b/c/w;->b:Lcom/c/b/c/w;

    aput-object v1, v0, v5

    sget-object v1, Lcom/c/b/c/w;->c:Lcom/c/b/c/w;

    aput-object v1, v0, v6

    sget-object v1, Lcom/c/b/c/w;->d:Lcom/c/b/c/w;

    aput-object v1, v0, v7

    sget-object v1, Lcom/c/b/c/w;->e:Lcom/c/b/c/w;

    aput-object v1, v0, v8

    sget-object v1, Lcom/c/b/c/w;->f:Lcom/c/b/c/w;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/c/b/c/w;->g:Lcom/c/b/c/w;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/c/b/c/w;->h:Lcom/c/b/c/w;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/c/b/c/w;->i:Lcom/c/b/c/w;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/c/b/c/w;->j:Lcom/c/b/c/w;

    aput-object v2, v0, v1

    sput-object v0, Lcom/c/b/c/w;->n:[Lcom/c/b/c/w;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/c/b/c/w;->k:Ljava/util/Map;

    .line 133
    const-class v0, Lcom/c/b/c/w;

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

    check-cast v0, Lcom/c/b/c/w;

    .line 134
    sget-object v2, Lcom/c/b/c/w;->k:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/c/b/c/w;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 136
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
    .line 192
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 193
    iput-short p3, p0, Lcom/c/b/c/w;->l:S

    .line 194
    iput-object p4, p0, Lcom/c/b/c/w;->m:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/c/b/c/w;
    .locals 1

    .prologue
    .line 122
    const-class v0, Lcom/c/b/c/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/c/b/c/w;

    return-object v0
.end method

.method public static values()[Lcom/c/b/c/w;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/c/b/c/w;->n:[Lcom/c/b/c/w;

    invoke-virtual {v0}, [Lcom/c/b/c/w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/b/c/w;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/c/b/c/w;->m:Ljava/lang/String;

    return-object v0
.end method
