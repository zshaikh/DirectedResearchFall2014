.class public final enum Lcom/c/b/c/h;
.super Ljava/lang/Enum;
.source "Note.java"


# static fields
.field public static final enum a:Lcom/c/b/c/h;

.field public static final enum b:Lcom/c/b/c/h;

.field public static final enum c:Lcom/c/b/c/h;

.field public static final enum d:Lcom/c/b/c/h;

.field public static final enum e:Lcom/c/b/c/h;

.field public static final enum f:Lcom/c/b/c/h;

.field public static final enum g:Lcom/c/b/c/h;

.field public static final enum h:Lcom/c/b/c/h;

.field public static final enum i:Lcom/c/b/c/h;

.field public static final enum j:Lcom/c/b/c/h;

.field public static final enum k:Lcom/c/b/c/h;

.field public static final enum l:Lcom/c/b/c/h;

.field public static final enum m:Lcom/c/b/c/h;

.field public static final enum n:Lcom/c/b/c/h;

.field public static final enum o:Lcom/c/b/c/h;

.field private static final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/c/b/c/h;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic s:[Lcom/c/b/c/h;


# instance fields
.field private final q:S

.field private final r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 190
    new-instance v0, Lcom/c/b/c/h;

    const-string v1, "GUID"

    const/4 v2, 0x0

    const-string v3, "guid"

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/c/b/c/h;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/h;->a:Lcom/c/b/c/h;

    .line 191
    new-instance v0, Lcom/c/b/c/h;

    const-string v1, "TITLE"

    const-string v2, "title"

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/c/b/c/h;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/h;->b:Lcom/c/b/c/h;

    .line 192
    new-instance v0, Lcom/c/b/c/h;

    const-string v1, "CONTENT"

    const-string v2, "content"

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/c/b/c/h;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/h;->c:Lcom/c/b/c/h;

    .line 193
    new-instance v0, Lcom/c/b/c/h;

    const-string v1, "CONTENT_HASH"

    const-string v2, "contentHash"

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/c/b/c/h;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/h;->d:Lcom/c/b/c/h;

    .line 194
    new-instance v0, Lcom/c/b/c/h;

    const-string v1, "CONTENT_LENGTH"

    const-string v2, "contentLength"

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/c/b/c/h;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/h;->e:Lcom/c/b/c/h;

    .line 195
    new-instance v0, Lcom/c/b/c/h;

    const-string v1, "CREATED"

    const/4 v2, 0x6

    const-string v3, "created"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/c/b/c/h;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/h;->f:Lcom/c/b/c/h;

    .line 196
    new-instance v0, Lcom/c/b/c/h;

    const-string v1, "UPDATED"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "updated"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/c/b/c/h;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/h;->g:Lcom/c/b/c/h;

    .line 197
    new-instance v0, Lcom/c/b/c/h;

    const-string v1, "DELETED"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "deleted"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/c/b/c/h;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/h;->h:Lcom/c/b/c/h;

    .line 198
    new-instance v0, Lcom/c/b/c/h;

    const-string v1, "ACTIVE"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const-string v4, "active"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/c/b/c/h;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/h;->i:Lcom/c/b/c/h;

    .line 199
    new-instance v0, Lcom/c/b/c/h;

    const-string v1, "UPDATE_SEQUENCE_NUM"

    const/16 v2, 0x9

    const/16 v3, 0xa

    const-string v4, "updateSequenceNum"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/c/b/c/h;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/h;->j:Lcom/c/b/c/h;

    .line 200
    new-instance v0, Lcom/c/b/c/h;

    const-string v1, "NOTEBOOK_GUID"

    const/16 v2, 0xa

    const/16 v3, 0xb

    const-string v4, "notebookGuid"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/c/b/c/h;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/h;->k:Lcom/c/b/c/h;

    .line 201
    new-instance v0, Lcom/c/b/c/h;

    const-string v1, "TAG_GUIDS"

    const/16 v2, 0xb

    const/16 v3, 0xc

    const-string v4, "tagGuids"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/c/b/c/h;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/h;->l:Lcom/c/b/c/h;

    .line 202
    new-instance v0, Lcom/c/b/c/h;

    const-string v1, "RESOURCES"

    const/16 v2, 0xc

    const/16 v3, 0xd

    const-string v4, "resources"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/c/b/c/h;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/h;->m:Lcom/c/b/c/h;

    .line 203
    new-instance v0, Lcom/c/b/c/h;

    const-string v1, "ATTRIBUTES"

    const/16 v2, 0xd

    const/16 v3, 0xe

    const-string v4, "attributes"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/c/b/c/h;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/h;->n:Lcom/c/b/c/h;

    .line 204
    new-instance v0, Lcom/c/b/c/h;

    const-string v1, "TAG_NAMES"

    const/16 v2, 0xe

    const/16 v3, 0xf

    const-string v4, "tagNames"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/c/b/c/h;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/h;->o:Lcom/c/b/c/h;

    .line 189
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/c/b/c/h;

    const/4 v1, 0x0

    sget-object v2, Lcom/c/b/c/h;->a:Lcom/c/b/c/h;

    aput-object v2, v0, v1

    sget-object v1, Lcom/c/b/c/h;->b:Lcom/c/b/c/h;

    aput-object v1, v0, v5

    sget-object v1, Lcom/c/b/c/h;->c:Lcom/c/b/c/h;

    aput-object v1, v0, v6

    sget-object v1, Lcom/c/b/c/h;->d:Lcom/c/b/c/h;

    aput-object v1, v0, v7

    sget-object v1, Lcom/c/b/c/h;->e:Lcom/c/b/c/h;

    aput-object v1, v0, v8

    sget-object v1, Lcom/c/b/c/h;->f:Lcom/c/b/c/h;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/c/b/c/h;->g:Lcom/c/b/c/h;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/c/b/c/h;->h:Lcom/c/b/c/h;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/c/b/c/h;->i:Lcom/c/b/c/h;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/c/b/c/h;->j:Lcom/c/b/c/h;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/c/b/c/h;->k:Lcom/c/b/c/h;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/c/b/c/h;->l:Lcom/c/b/c/h;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/c/b/c/h;->m:Lcom/c/b/c/h;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/c/b/c/h;->n:Lcom/c/b/c/h;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/c/b/c/h;->o:Lcom/c/b/c/h;

    aput-object v2, v0, v1

    sput-object v0, Lcom/c/b/c/h;->s:[Lcom/c/b/c/h;

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/c/b/c/h;->p:Ljava/util/Map;

    .line 209
    const-class v0, Lcom/c/b/c/h;

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

    check-cast v0, Lcom/c/b/c/h;

    .line 210
    sget-object v2, Lcom/c/b/c/h;->p:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/c/b/c/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 212
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
    .line 274
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 275
    iput-short p3, p0, Lcom/c/b/c/h;->q:S

    .line 276
    iput-object p4, p0, Lcom/c/b/c/h;->r:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/c/b/c/h;
    .locals 1

    .prologue
    .line 189
    const-class v0, Lcom/c/b/c/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/c/b/c/h;

    return-object v0
.end method

.method public static values()[Lcom/c/b/c/h;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/c/b/c/h;->s:[Lcom/c/b/c/h;

    invoke-virtual {v0}, [Lcom/c/b/c/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/b/c/h;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/c/b/c/h;->r:Ljava/lang/String;

    return-object v0
.end method
