.class public final enum Lcom/c/b/b/v;
.super Ljava/lang/Enum;
.source "NoteStore.java"


# static fields
.field public static final enum a:Lcom/c/b/b/v;

.field public static final enum b:Lcom/c/b/b/v;

.field public static final enum c:Lcom/c/b/b/v;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/c/b/b/v;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic g:[Lcom/c/b/b/v;


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

    .line 17516
    new-instance v0, Lcom/c/b/b/v;

    const-string v1, "SUCCESS"

    const-string v2, "success"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/c/b/b/v;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/b/v;->a:Lcom/c/b/b/v;

    .line 17517
    new-instance v0, Lcom/c/b/b/v;

    const-string v1, "USER_EXCEPTION"

    const-string v2, "userException"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/c/b/b/v;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/b/v;->b:Lcom/c/b/b/v;

    .line 17518
    new-instance v0, Lcom/c/b/b/v;

    const-string v1, "SYSTEM_EXCEPTION"

    const-string v2, "systemException"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/c/b/b/v;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/b/v;->c:Lcom/c/b/b/v;

    .line 17515
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/c/b/b/v;

    sget-object v1, Lcom/c/b/b/v;->a:Lcom/c/b/b/v;

    aput-object v1, v0, v3

    sget-object v1, Lcom/c/b/b/v;->b:Lcom/c/b/b/v;

    aput-object v1, v0, v4

    sget-object v1, Lcom/c/b/b/v;->c:Lcom/c/b/b/v;

    aput-object v1, v0, v5

    sput-object v0, Lcom/c/b/b/v;->g:[Lcom/c/b/b/v;

    .line 17520
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/c/b/b/v;->d:Ljava/util/Map;

    .line 17523
    const-class v0, Lcom/c/b/b/v;

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

    check-cast v0, Lcom/c/b/b/v;

    .line 17524
    sget-object v2, Lcom/c/b/b/v;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/c/b/b/v;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 17526
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
    .line 17564
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17565
    iput-short p3, p0, Lcom/c/b/b/v;->e:S

    .line 17566
    iput-object p4, p0, Lcom/c/b/b/v;->f:Ljava/lang/String;

    .line 17567
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/c/b/b/v;
    .locals 1

    .prologue
    .line 17515
    const-class v0, Lcom/c/b/b/v;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/c/b/b/v;

    return-object v0
.end method

.method public static values()[Lcom/c/b/b/v;
    .locals 1

    .prologue
    .line 17515
    sget-object v0, Lcom/c/b/b/v;->g:[Lcom/c/b/b/v;

    invoke-virtual {v0}, [Lcom/c/b/b/v;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/b/b/v;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17574
    iget-object v0, p0, Lcom/c/b/b/v;->f:Ljava/lang/String;

    return-object v0
.end method