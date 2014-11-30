.class public final enum Lcom/c/b/c/m;
.super Ljava/lang/Enum;
.source "Notebook.java"


# static fields
.field public static final enum a:Lcom/c/b/c/m;

.field public static final enum b:Lcom/c/b/c/m;

.field public static final enum c:Lcom/c/b/c/m;

.field public static final enum d:Lcom/c/b/c/m;

.field public static final enum e:Lcom/c/b/c/m;

.field public static final enum f:Lcom/c/b/c/m;

.field public static final enum g:Lcom/c/b/c/m;

.field public static final enum h:Lcom/c/b/c/m;

.field public static final enum i:Lcom/c/b/c/m;

.field public static final enum j:Lcom/c/b/c/m;

.field public static final enum k:Lcom/c/b/c/m;

.field private static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/c/b/c/m;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic o:[Lcom/c/b/c/m;


# instance fields
.field private final m:S

.field private final n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 172
    new-instance v0, Lcom/c/b/c/m;

    const-string v1, "GUID"

    const/4 v2, 0x0

    const-string v3, "guid"

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/c/b/c/m;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/m;->a:Lcom/c/b/c/m;

    new-instance v0, Lcom/c/b/c/m;

    const-string v1, "NAME"

    const-string v2, "name"

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/c/b/c/m;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/m;->b:Lcom/c/b/c/m;

    new-instance v0, Lcom/c/b/c/m;

    const-string v1, "UPDATE_SEQUENCE_NUM"

    const-string v2, "updateSequenceNum"

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/c/b/c/m;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/m;->c:Lcom/c/b/c/m;

    .line 173
    new-instance v0, Lcom/c/b/c/m;

    const-string v1, "DEFAULT_NOTEBOOK"

    const/4 v2, 0x3

    const-string v3, "defaultNotebook"

    invoke-direct {v0, v1, v2, v8, v3}, Lcom/c/b/c/m;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/m;->d:Lcom/c/b/c/m;

    .line 174
    new-instance v0, Lcom/c/b/c/m;

    const-string v1, "SERVICE_CREATED"

    const/4 v2, 0x4

    const-string v3, "serviceCreated"

    invoke-direct {v0, v1, v2, v9, v3}, Lcom/c/b/c/m;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/m;->e:Lcom/c/b/c/m;

    new-instance v0, Lcom/c/b/c/m;

    const-string v1, "SERVICE_UPDATED"

    const/16 v2, 0x8

    const-string v3, "serviceUpdated"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/c/b/c/m;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/m;->f:Lcom/c/b/c/m;

    .line 175
    new-instance v0, Lcom/c/b/c/m;

    const-string v1, "PUBLISHING"

    const/16 v2, 0xa

    const-string v3, "publishing"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/c/b/c/m;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/m;->g:Lcom/c/b/c/m;

    .line 176
    new-instance v0, Lcom/c/b/c/m;

    const-string v1, "PUBLISHED"

    const/16 v2, 0xb

    const-string v3, "published"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/c/b/c/m;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/m;->h:Lcom/c/b/c/m;

    new-instance v0, Lcom/c/b/c/m;

    const-string v1, "STACK"

    const/16 v2, 0x8

    const/16 v3, 0xc

    const-string v4, "stack"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/c/b/c/m;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/m;->i:Lcom/c/b/c/m;

    .line 177
    new-instance v0, Lcom/c/b/c/m;

    const-string v1, "SHARED_NOTEBOOK_IDS"

    const/16 v2, 0x9

    const/16 v3, 0xd

    const-string v4, "sharedNotebookIds"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/c/b/c/m;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/m;->j:Lcom/c/b/c/m;

    .line 178
    new-instance v0, Lcom/c/b/c/m;

    const-string v1, "SHARED_NOTEBOOKS"

    const/16 v2, 0xa

    const/16 v3, 0xe

    const-string v4, "sharedNotebooks"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/c/b/c/m;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/m;->k:Lcom/c/b/c/m;

    .line 171
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/c/b/c/m;

    const/4 v1, 0x0

    sget-object v2, Lcom/c/b/c/m;->a:Lcom/c/b/c/m;

    aput-object v2, v0, v1

    sget-object v1, Lcom/c/b/c/m;->b:Lcom/c/b/c/m;

    aput-object v1, v0, v5

    sget-object v1, Lcom/c/b/c/m;->c:Lcom/c/b/c/m;

    aput-object v1, v0, v6

    const/4 v1, 0x3

    sget-object v2, Lcom/c/b/c/m;->d:Lcom/c/b/c/m;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/c/b/c/m;->e:Lcom/c/b/c/m;

    aput-object v2, v0, v1

    sget-object v1, Lcom/c/b/c/m;->f:Lcom/c/b/c/m;

    aput-object v1, v0, v7

    sget-object v1, Lcom/c/b/c/m;->g:Lcom/c/b/c/m;

    aput-object v1, v0, v8

    sget-object v1, Lcom/c/b/c/m;->h:Lcom/c/b/c/m;

    aput-object v1, v0, v9

    const/16 v1, 0x8

    sget-object v2, Lcom/c/b/c/m;->i:Lcom/c/b/c/m;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/c/b/c/m;->j:Lcom/c/b/c/m;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/c/b/c/m;->k:Lcom/c/b/c/m;

    aput-object v2, v0, v1

    sput-object v0, Lcom/c/b/c/m;->o:[Lcom/c/b/c/m;

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/c/b/c/m;->l:Ljava/util/Map;

    .line 184
    const-class v0, Lcom/c/b/c/m;

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

    check-cast v0, Lcom/c/b/c/m;

    .line 185
    sget-object v2, Lcom/c/b/c/m;->l:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/c/b/c/m;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 187
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
    .line 245
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 246
    iput-short p3, p0, Lcom/c/b/c/m;->m:S

    .line 247
    iput-object p4, p0, Lcom/c/b/c/m;->n:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/c/b/c/m;
    .locals 1

    .prologue
    .line 171
    const-class v0, Lcom/c/b/c/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/c/b/c/m;

    return-object v0
.end method

.method public static values()[Lcom/c/b/c/m;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/c/b/c/m;->o:[Lcom/c/b/c/m;

    invoke-virtual {v0}, [Lcom/c/b/c/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/b/c/m;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/c/b/c/m;->n:Ljava/lang/String;

    return-object v0
.end method
