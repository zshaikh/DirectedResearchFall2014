.class public Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterMethodFilter;
.super Ljava/lang/Object;
.source "BasicClassIntrospector.java"

# interfaces
.implements Lorg/codehaus/jackson/map/introspect/MethodFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Method;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 49
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 69
    :goto_0
    return v0

    .line 52
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    .line 54
    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 69
    goto :goto_0

    :pswitch_0
    move v0, v2

    .line 57
    goto :goto_0

    :pswitch_1
    move v0, v2

    .line 67
    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
