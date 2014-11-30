.class public final enum Lcom/c/b/b/r;
.super Ljava/lang/Enum;
.source "NoteStore.java"


# static fields
.field public static final enum a:Lcom/c/b/b/r;

.field public static final enum b:Lcom/c/b/b/r;

.field public static final enum c:Lcom/c/b/b/r;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/c/b/b/r;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic g:[Lcom/c/b/b/r;


# instance fields
.field private final e:S

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12552
    new-instance v0, Lcom/c/b/b/r;

    const-string v1, "SUCCESS"

    const-string v2, "success"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/c/b/b/r;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/b/r;->a:Lcom/c/b/b/r;

    .line 12553
    new-instance v0, Lcom/c/b/b/r;

    const-string v1, "USER_EXCEPTION"

    const-string v2, "userException"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/c/b/b/r;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/b/r;->b:Lcom/c/b/b/r;

    .line 12554
    new-instance v0, Lcom/c/b/b/r;

    const-string v1, "SYSTEM_EXCEPTION"

    const-string v2, "systemException"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/c/b/b/r;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/b/r;->c:Lcom/c/b/b/r;

    .line 12551
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/c/b/b/r;

    sget-object v1, Lcom/c/b/b/r;->a:Lcom/c/b/b/r;

    aput-object v1, v0, v3

    sget-object v1, Lcom/c/b/b/r;->b:Lcom/c/b/b/r;

    aput-object v1, v0, v4

    sget-object v1, Lcom/c/b/b/r;->c:Lcom/c/b/b/r;

    aput-object v1, v0, v5

    sput-object v0, Lcom/c/b/b/r;->g:[Lcom/c/b/b/r;

    .line 12556
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/c/b/b/r;->d:Ljava/util/Map;

    .line 12559
    const-class v0, Lcom/c/b/b/r;

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

    check-cast v0, Lcom/c/b/b/r;

    .line 12560
    sget-object v2, Lcom/c/b/b/r;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/c/b/b/r;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12562
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
    .line 12600
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12601
    iput-short p3, p0, Lcom/c/b/b/r;->e:S

    .line 12602
    iput-object p4, p0, Lcom/c/b/b/r;->f:Ljava/lang/String;

    .line 12603
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/c/b/b/r;
    .locals 1

    .prologue
    .line 12551
    const-class v0, Lcom/c/b/b/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/c/b/b/r;

    return-object v0
.end method

.method public static values()[Lcom/c/b/b/r;
    .locals 1

    .prologue
    .line 12551
    sget-object v0, Lcom/c/b/b/r;->g:[Lcom/c/b/b/r;

    invoke-virtual {v0}, [Lcom/c/b/b/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/b/b/r;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12610
    iget-object v0, p0, Lcom/c/b/b/r;->f:Ljava/lang/String;

    return-object v0
.end method
