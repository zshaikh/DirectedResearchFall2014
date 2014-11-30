.class public final enum Lcom/c/b/d/f;
.super Ljava/lang/Enum;
.source "UserStore.java"


# static fields
.field public static final enum a:Lcom/c/b/d/f;

.field public static final enum b:Lcom/c/b/d/f;

.field public static final enum c:Lcom/c/b/d/f;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/c/b/d/f;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic g:[Lcom/c/b/d/f;


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

    .line 3975
    new-instance v0, Lcom/c/b/d/f;

    const-string v1, "SUCCESS"

    const-string v2, "success"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/c/b/d/f;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/d/f;->a:Lcom/c/b/d/f;

    .line 3976
    new-instance v0, Lcom/c/b/d/f;

    const-string v1, "USER_EXCEPTION"

    const-string v2, "userException"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/c/b/d/f;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/d/f;->b:Lcom/c/b/d/f;

    .line 3977
    new-instance v0, Lcom/c/b/d/f;

    const-string v1, "SYSTEM_EXCEPTION"

    const-string v2, "systemException"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/c/b/d/f;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/d/f;->c:Lcom/c/b/d/f;

    .line 3974
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/c/b/d/f;

    sget-object v1, Lcom/c/b/d/f;->a:Lcom/c/b/d/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/c/b/d/f;->b:Lcom/c/b/d/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/c/b/d/f;->c:Lcom/c/b/d/f;

    aput-object v1, v0, v5

    sput-object v0, Lcom/c/b/d/f;->g:[Lcom/c/b/d/f;

    .line 3979
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/c/b/d/f;->d:Ljava/util/Map;

    .line 3982
    const-class v0, Lcom/c/b/d/f;

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

    check-cast v0, Lcom/c/b/d/f;

    .line 3983
    sget-object v2, Lcom/c/b/d/f;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/c/b/d/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3985
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
    .line 4023
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4024
    iput-short p3, p0, Lcom/c/b/d/f;->e:S

    .line 4025
    iput-object p4, p0, Lcom/c/b/d/f;->f:Ljava/lang/String;

    .line 4026
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/c/b/d/f;
    .locals 1

    .prologue
    .line 3974
    const-class v0, Lcom/c/b/d/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/c/b/d/f;

    return-object v0
.end method

.method public static values()[Lcom/c/b/d/f;
    .locals 1

    .prologue
    .line 3974
    sget-object v0, Lcom/c/b/d/f;->g:[Lcom/c/b/d/f;

    invoke-virtual {v0}, [Lcom/c/b/d/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/b/d/f;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4033
    iget-object v0, p0, Lcom/c/b/d/f;->f:Ljava/lang/String;

    return-object v0
.end method
