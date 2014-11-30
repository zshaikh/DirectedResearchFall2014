.class public final enum Lcom/c/b/b/j;
.super Ljava/lang/Enum;
.source "NoteStore.java"


# static fields
.field public static final enum a:Lcom/c/b/b/j;

.field public static final enum b:Lcom/c/b/b/j;

.field public static final enum c:Lcom/c/b/b/j;

.field public static final enum d:Lcom/c/b/b/j;

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/c/b/b/j;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic h:[Lcom/c/b/b/j;


# instance fields
.field private final f:S

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20188
    new-instance v0, Lcom/c/b/b/j;

    const-string v1, "SUCCESS"

    const-string v2, "success"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/c/b/b/j;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/b/j;->a:Lcom/c/b/b/j;

    .line 20189
    new-instance v0, Lcom/c/b/b/j;

    const-string v1, "USER_EXCEPTION"

    const-string v2, "userException"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/c/b/b/j;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/b/j;->b:Lcom/c/b/b/j;

    .line 20190
    new-instance v0, Lcom/c/b/b/j;

    const-string v1, "SYSTEM_EXCEPTION"

    const-string v2, "systemException"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/c/b/b/j;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/b/j;->c:Lcom/c/b/b/j;

    .line 20191
    new-instance v0, Lcom/c/b/b/j;

    const-string v1, "NOT_FOUND_EXCEPTION"

    const-string v2, "notFoundException"

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/c/b/b/j;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/b/j;->d:Lcom/c/b/b/j;

    .line 20187
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/c/b/b/j;

    sget-object v1, Lcom/c/b/b/j;->a:Lcom/c/b/b/j;

    aput-object v1, v0, v3

    sget-object v1, Lcom/c/b/b/j;->b:Lcom/c/b/b/j;

    aput-object v1, v0, v4

    sget-object v1, Lcom/c/b/b/j;->c:Lcom/c/b/b/j;

    aput-object v1, v0, v5

    sget-object v1, Lcom/c/b/b/j;->d:Lcom/c/b/b/j;

    aput-object v1, v0, v6

    sput-object v0, Lcom/c/b/b/j;->h:[Lcom/c/b/b/j;

    .line 20193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/c/b/b/j;->e:Ljava/util/Map;

    .line 20196
    const-class v0, Lcom/c/b/b/j;

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

    check-cast v0, Lcom/c/b/b/j;

    .line 20197
    sget-object v2, Lcom/c/b/b/j;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/c/b/b/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 20199
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
    .line 20239
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20240
    iput-short p3, p0, Lcom/c/b/b/j;->f:S

    .line 20241
    iput-object p4, p0, Lcom/c/b/b/j;->g:Ljava/lang/String;

    .line 20242
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/c/b/b/j;
    .locals 1

    .prologue
    .line 20187
    const-class v0, Lcom/c/b/b/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/c/b/b/j;

    return-object v0
.end method

.method public static values()[Lcom/c/b/b/j;
    .locals 1

    .prologue
    .line 20187
    sget-object v0, Lcom/c/b/b/j;->h:[Lcom/c/b/b/j;

    invoke-virtual {v0}, [Lcom/c/b/b/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/b/b/j;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20249
    iget-object v0, p0, Lcom/c/b/b/j;->g:Ljava/lang/String;

    return-object v0
.end method
