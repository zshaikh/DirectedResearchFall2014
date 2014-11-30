.class Lcom/dolphin/browser/q/d/al;
.super Ljava/lang/Object;
.source "TwitterWebServiceClient.java"

# interfaces
.implements Lcom/dolphin/browser/Network/k;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/d/ak;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/d/ak;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/dolphin/browser/q/d/al;->a:Lcom/dolphin/browser/q/d/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 1

    .prologue
    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/q/d/al;->a:Lcom/dolphin/browser/q/d/ak;

    invoke-static {v0}, Lcom/dolphin/browser/q/d/ak;->a(Lcom/dolphin/browser/q/d/ak;)Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    move-result-object v0

    invoke-virtual {v0, p1}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->sign(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;
    :try_end_0
    .catch Loauth/signpost/exception/OAuthMessageSignerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Loauth/signpost/exception/OAuthCommunicationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 84
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 79
    :catch_1
    move-exception v0

    .line 80
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 81
    :catch_2
    move-exception v0

    .line 82
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
