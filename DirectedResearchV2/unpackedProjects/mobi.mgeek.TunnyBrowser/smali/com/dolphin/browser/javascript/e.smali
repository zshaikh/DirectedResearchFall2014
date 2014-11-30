.class final Lcom/dolphin/browser/javascript/e;
.super Ljava/lang/Object;
.source "JavaScriptAPIDescriptor.java"


# instance fields
.field final a:Ljava/lang/reflect/Method;

.field final b:Lcom/dolphin/browser/javascript/JavaScriptRequestAPI;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Lcom/dolphin/browser/javascript/JavaScriptRequestAPI;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/dolphin/browser/javascript/e;->a:Ljava/lang/reflect/Method;

    .line 20
    iput-object p2, p0, Lcom/dolphin/browser/javascript/e;->b:Lcom/dolphin/browser/javascript/JavaScriptRequestAPI;

    .line 21
    return-void
.end method

.method static a(Lcom/dolphin/browser/javascript/g;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    packed-switch p2, :pswitch_data_0

    .line 95
    :pswitch_0
    const/4 p3, 0x0

    :cond_0
    :goto_0
    return-object p3

    .line 68
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/javascript/g;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/javascript/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 73
    :pswitch_2
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/javascript/g;->a(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    goto :goto_0

    .line 75
    :pswitch_3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/javascript/g;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_0

    .line 77
    :pswitch_4
    invoke-static {p3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/javascript/g;->a(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    goto :goto_0

    .line 79
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/javascript/g;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/javascript/g;->b(Ljava/lang/String;)[B

    move-result-object p3

    goto :goto_0

    .line 82
    :cond_1
    const/16 v0, 0x8

    invoke-static {p3, v0}, Lcom/dolphin/browser/util/aa;->a(Ljava/lang/String;I)[B

    move-result-object p3

    goto :goto_0

    .line 84
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/javascript/g;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    goto :goto_0

    .line 87
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/javascript/g;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/javascript/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 90
    :cond_2
    new-instance v0, Lcom/dolphin/browser/javascript/f;

    invoke-direct {v0, p3}, Lcom/dolphin/browser/javascript/f;-><init>(Ljava/lang/String;)V

    move-object p3, v0

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private a(Lcom/dolphin/browser/javascript/g;)[Ljava/lang/Object;
    .locals 7

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/javascript/e;->b:Lcom/dolphin/browser/javascript/JavaScriptRequestAPI;

    invoke-interface {v0}, Lcom/dolphin/browser/javascript/JavaScriptRequestAPI;->b()[Lcom/dolphin/browser/javascript/JavaScriptRequestParameter;

    move-result-object v1

    .line 55
    array-length v2, v1

    .line 56
    new-array v3, v2, [Ljava/lang/Object;

    .line 57
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 58
    aget-object v4, v1, v0

    .line 59
    invoke-interface {v4}, Lcom/dolphin/browser/javascript/JavaScriptRequestParameter;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lcom/dolphin/browser/javascript/JavaScriptRequestParameter;->b()I

    move-result v6

    invoke-interface {v4}, Lcom/dolphin/browser/javascript/JavaScriptRequestParameter;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v5, v6, v4}, Lcom/dolphin/browser/javascript/e;->a(Lcom/dolphin/browser/javascript/g;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_0
    return-object v3
.end method


# virtual methods
.method a(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/javascript/h;Lcom/dolphin/browser/javascript/g;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 24
    iget-object v0, p0, Lcom/dolphin/browser/javascript/e;->b:Lcom/dolphin/browser/javascript/JavaScriptRequestAPI;

    invoke-interface {v0}, Lcom/dolphin/browser/javascript/JavaScriptRequestAPI;->e()I

    move-result v0

    .line 25
    if-eq v6, v0, :cond_0

    invoke-virtual {p2}, Lcom/dolphin/browser/javascript/h;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eq v7, v0, :cond_2

    :cond_0
    invoke-virtual {p3}, Lcom/dolphin/browser/javascript/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/dolphin/browser/javascript/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 28
    sget-object v0, Lcom/dolphin/browser/javascript/h;->a:Ljava/lang/String;

    const-string v1, "API %s called from invalid page %s."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/dolphin/browser/javascript/g;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {p3}, Lcom/dolphin/browser/javascript/g;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 51
    :cond_1
    :goto_0
    return-void

    .line 33
    :cond_2
    invoke-direct {p0, p3}, Lcom/dolphin/browser/javascript/e;->a(Lcom/dolphin/browser/javascript/g;)[Ljava/lang/Object;

    move-result-object v0

    .line 34
    sget-object v2, Lcom/dolphin/browser/javascript/h;->a:Ljava/lang/String;

    const-string v3, "Calling %s(args=%s) from %s."

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/dolphin/browser/javascript/g;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object v0, v4, v6

    invoke-virtual {p3}, Lcom/dolphin/browser/javascript/g;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 37
    :try_start_0
    iget-object v2, p0, Lcom/dolphin/browser/javascript/e;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v2, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 46
    :goto_1
    iget-object v2, p0, Lcom/dolphin/browser/javascript/e;->b:Lcom/dolphin/browser/javascript/JavaScriptRequestAPI;

    invoke-interface {v2}, Lcom/dolphin/browser/javascript/JavaScriptRequestAPI;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/dolphin/browser/javascript/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    iget-object v3, p0, Lcom/dolphin/browser/javascript/e;->b:Lcom/dolphin/browser/javascript/JavaScriptRequestAPI;

    invoke-interface {v3}, Lcom/dolphin/browser/javascript/JavaScriptRequestAPI;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3, v1}, Lcom/dolphin/browser/javascript/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 49
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/dolphin/browser/javascript/f;->a(Ljava/lang/String;)Lcom/dolphin/browser/javascript/f;

    move-result-object v1

    aput-object v1, v3, v8

    aput-object v0, v3, v6

    invoke-static {p1, v2, v3}, Lcom/dolphin/browser/javascript/h;->a(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move-object v0, v1

    .line 44
    goto :goto_1

    .line 40
    :catch_1
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move-object v0, v1

    .line 44
    goto :goto_1

    .line 42
    :catch_2
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1
.end method
