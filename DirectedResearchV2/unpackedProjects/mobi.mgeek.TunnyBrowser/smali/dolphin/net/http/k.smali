.class public Ldolphin/net/http/k;
.super Ljava/lang/Object;
.source "ErrorStrings.java"


# direct methods
.method public static a(I)I
    .locals 3

    .prologue
    .line 30
    packed-switch p0, :pswitch_data_0

    .line 80
    const-string v0, "Http"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using generic message for unknown error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sget v0, Ldolphin/webkit/R$string;->httpError:I

    :goto_0
    return v0

    .line 32
    :pswitch_0
    sget v0, Ldolphin/webkit/R$string;->httpErrorOk:I

    goto :goto_0

    .line 35
    :pswitch_1
    sget v0, Ldolphin/webkit/R$string;->httpError:I

    goto :goto_0

    .line 38
    :pswitch_2
    sget v0, Ldolphin/webkit/R$string;->httpErrorLookup:I

    goto :goto_0

    .line 41
    :pswitch_3
    sget v0, Ldolphin/webkit/R$string;->httpErrorUnsupportedAuthScheme:I

    goto :goto_0

    .line 44
    :pswitch_4
    sget v0, Ldolphin/webkit/R$string;->httpErrorAuth:I

    goto :goto_0

    .line 47
    :pswitch_5
    sget v0, Ldolphin/webkit/R$string;->httpErrorProxyAuth:I

    goto :goto_0

    .line 50
    :pswitch_6
    sget v0, Ldolphin/webkit/R$string;->httpErrorConnect:I

    goto :goto_0

    .line 53
    :pswitch_7
    sget v0, Ldolphin/webkit/R$string;->httpErrorIO:I

    goto :goto_0

    .line 56
    :pswitch_8
    sget v0, Ldolphin/webkit/R$string;->httpErrorTimeout:I

    goto :goto_0

    .line 59
    :pswitch_9
    sget v0, Ldolphin/webkit/R$string;->httpErrorRedirectLoop:I

    goto :goto_0

    .line 62
    :pswitch_a
    sget v0, Ldolphin/webkit/R$string;->httpErrorUnsupportedScheme:I

    goto :goto_0

    .line 65
    :pswitch_b
    sget v0, Ldolphin/webkit/R$string;->httpErrorFailedSslHandshake:I

    goto :goto_0

    .line 68
    :pswitch_c
    sget v0, Ldolphin/webkit/R$string;->httpErrorBadUrl:I

    goto :goto_0

    .line 71
    :pswitch_d
    sget v0, Ldolphin/webkit/R$string;->httpErrorFile:I

    goto :goto_0

    .line 74
    :pswitch_e
    sget v0, Ldolphin/webkit/R$string;->httpErrorFileNotFound:I

    goto :goto_0

    .line 77
    :pswitch_f
    sget v0, Ldolphin/webkit/R$string;->httpErrorTooManyRequests:I

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch -0xf
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    invoke-static {p0}, Ldolphin/net/http/k;->a(I)I

    move-result v0

    invoke-static {v0}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
