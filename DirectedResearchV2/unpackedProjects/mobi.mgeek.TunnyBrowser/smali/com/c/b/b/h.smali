.class public final enum Lcom/c/b/b/h;
.super Ljava/lang/Enum;
.source "NoteStore.java"


# static fields
.field public static final enum a:Lcom/c/b/b/h;

.field public static final enum b:Lcom/c/b/b/h;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/c/b/b/h;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic f:[Lcom/c/b/b/h;


# instance fields
.field private final d:S

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 19823
    new-instance v0, Lcom/c/b/b/h;

    const-string v1, "AUTHENTICATION_TOKEN"

    const-string v2, "authenticationToken"

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/c/b/b/h;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/b/h;->a:Lcom/c/b/b/h;

    .line 19824
    new-instance v0, Lcom/c/b/b/h;

    const-string v1, "TAG"

    const-string v2, "tag"

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/c/b/b/h;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/b/h;->b:Lcom/c/b/b/h;

    .line 19822
    new-array v0, v5, [Lcom/c/b/b/h;

    sget-object v1, Lcom/c/b/b/h;->a:Lcom/c/b/b/h;

    aput-object v1, v0, v4

    sget-object v1, Lcom/c/b/b/h;->b:Lcom/c/b/b/h;

    aput-object v1, v0, v3

    sput-object v0, Lcom/c/b/b/h;->f:[Lcom/c/b/b/h;

    .line 19826
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/c/b/b/h;->c:Ljava/util/Map;

    .line 19829
    const-class v0, Lcom/c/b/b/h;

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

    check-cast v0, Lcom/c/b/b/h;

    .line 19830
    sget-object v2, Lcom/c/b/b/h;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/c/b/b/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 19832
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
    .line 19868
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19869
    iput-short p3, p0, Lcom/c/b/b/h;->d:S

    .line 19870
    iput-object p4, p0, Lcom/c/b/b/h;->e:Ljava/lang/String;

    .line 19871
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/c/b/b/h;
    .locals 1

    .prologue
    .line 19822
    const-class v0, Lcom/c/b/b/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/c/b/b/h;

    return-object v0
.end method

.method public static values()[Lcom/c/b/b/h;
    .locals 1

    .prologue
    .line 19822
    sget-object v0, Lcom/c/b/b/h;->f:[Lcom/c/b/b/h;

    invoke-virtual {v0}, [Lcom/c/b/b/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/b/b/h;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19878
    iget-object v0, p0, Lcom/c/b/b/h;->e:Ljava/lang/String;

    return-object v0
.end method
