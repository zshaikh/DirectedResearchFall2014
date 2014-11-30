.class Lcom/flurry/android/monolithic/sdk/impl/xu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/xz;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/xs;)V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/xu;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Method;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 264
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 268
    :goto_0
    return v0

    .line 267
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    .line 268
    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method
