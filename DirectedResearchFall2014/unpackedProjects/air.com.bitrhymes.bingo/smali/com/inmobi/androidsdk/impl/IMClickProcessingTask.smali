.class public Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;
.super Landroid/os/AsyncTask;
.source "IMClickProcessingTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/inmobi/androidsdk/impl/IMAdUnit;

.field private final b:Lcom/inmobi/androidsdk/impl/IMUserInfo;

.field private final c:Landroid/content/Context;

.field private d:Landroid/os/Message;

.field private e:Landroid/os/Message;

.field private f:Landroid/os/Message;

.field private g:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

.field private h:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>(Lcom/inmobi/androidsdk/impl/IMAdUnit;Lcom/inmobi/androidsdk/impl/IMUserInfo;Landroid/content/Context;Landroid/view/MotionEvent;Landroid/os/Message;Landroid/os/Message;Landroid/os/Message;Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->a:Lcom/inmobi/androidsdk/impl/IMAdUnit;

    .line 42
    iput-object p2, p0, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->b:Lcom/inmobi/androidsdk/impl/IMUserInfo;

    .line 43
    iput-object p3, p0, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->c:Landroid/content/Context;

    .line 44
    iput-object p5, p0, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->d:Landroid/os/Message;

    .line 45
    iput-object p6, p0, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->e:Landroid/os/Message;

    .line 46
    iput-object p7, p0, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->f:Landroid/os/Message;

    .line 47
    iput-object p8, p0, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->g:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    .line 48
    iput-object p4, p0, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->h:Landroid/view/MotionEvent;

    .line 49
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const-string v0, "android.intent.action.VIEW"

    const-string v3, "InMobiAndroidSDK_3.6.2"

    .line 92
    if-nez p1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    :try_start_0
    const-string v0, "InMobiAndroidSDK_3.6.2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Click target URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "InMobiAndroidSDK_3.6.2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdActionName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->a:Lcom/inmobi/androidsdk/impl/IMAdUnit;

    invoke-virtual {v2}, Lcom/inmobi/androidsdk/impl/IMAdUnit;->getAdActionName()Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->a:Lcom/inmobi/androidsdk/impl/IMAdUnit;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/IMAdUnit;->getAdActionName()Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;->AdActionName_SMS:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

    if-ne v0, v1, :cond_2

    .line 100
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->b(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->f:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->f:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    const-string v1, "InMobiAndroidSDK_3.6.2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Operation could not be performed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-static {v3, v1, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 104
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->a:Lcom/inmobi/androidsdk/impl/IMAdUnit;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/IMAdUnit;->getAdActionName()Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;->AdActionName_Web:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

    if-eq v0, v1, :cond_3

    .line 105
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->a:Lcom/inmobi/androidsdk/impl/IMAdUnit;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/IMAdUnit;->getAdActionName()Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;->AdActionName_Search:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

    if-ne v0, v1, :cond_5

    .line 110
    :cond_3
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 111
    const-string v0, "play.google.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 112
    const-string v0, "market.android.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 113
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->c:Landroid/content/Context;

    .line 114
    const-class v2, Lcom/inmobi/androidsdk/IMBrowserActivity;

    .line 113
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    const-string v1, "extra_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v1, "extra_browser_type"

    .line 118
    const/16 v2, 0x65

    .line 116
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    const-string v1, "FIRST_INSTANCE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 120
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->g:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    invoke-static {v1}, Lcom/inmobi/androidsdk/IMBrowserActivity;->setWebViewListener(Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;)V

    .line 121
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 122
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->e:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->e:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 160
    :catch_1
    move-exception v0

    .line 161
    const-string v1, "InMobiAndroidSDK_3.6.2"

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error executing post click actions on URL : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-static {v3, v1, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 135
    :cond_4
    :try_start_2
    const-string v0, "android.intent.action.VIEW"

    .line 136
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 137
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 138
    const/high16 v0, 0x1000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 139
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->c:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 140
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->f:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->f:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 147
    :cond_5
    const-string v0, "android.intent.action.VIEW"

    .line 148
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 149
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 150
    const/high16 v0, 0x1000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 151
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->c:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 152
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->f:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->f:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const-string v3, "&Body="

    .line 168
    const/4 v0, 0x0

    .line 169
    const-string v1, "&Body="

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 170
    if-lez v1, :cond_1

    .line 171
    const-string v0, "&Body="

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 174
    :goto_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 175
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 176
    const/high16 v1, 0x1000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 178
    const-string v1, "compose_mode"

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 179
    if-eqz v0, :cond_0

    .line 180
    const-string v1, "sms_body"

    .line 181
    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Lcom/inmobi/androidsdk/impl/net/IMHttpRequestBuilder;->getURLDecoded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->c:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 184
    return-void

    :cond_1
    move-object v1, p1

    goto :goto_0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 52
    .line 54
    :try_start_0
    new-instance v0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;-><init>()V

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    const-string v2, "x-mkhoj-adactiontype"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->a:Lcom/inmobi/androidsdk/impl/IMAdUnit;

    invoke-virtual {v2}, Lcom/inmobi/androidsdk/impl/IMAdUnit;->getAdActionName()Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->a:Lcom/inmobi/androidsdk/impl/IMAdUnit;

    invoke-virtual {v2}, Lcom/inmobi/androidsdk/impl/IMAdUnit;->getAdType()Lcom/inmobi/androidsdk/impl/IMAdUnit$AdTypes;

    move-result-object v2

    sget-object v3, Lcom/inmobi/androidsdk/impl/IMAdUnit$AdTypes;->SEARCH:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdTypes;

    invoke-virtual {v2, v3}, Lcom/inmobi/androidsdk/impl/IMAdUnit$AdTypes;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->h:Landroid/view/MotionEvent;

    .line 64
    :cond_0
    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->a:Lcom/inmobi/androidsdk/impl/IMAdUnit;

    invoke-virtual {v2}, Lcom/inmobi/androidsdk/impl/IMAdUnit;->getTargetUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->b:Lcom/inmobi/androidsdk/impl/IMUserInfo;

    iget-object v4, p0, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->h:Landroid/view/MotionEvent;

    .line 63
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->initiateClick(Ljava/lang/String;Lcom/inmobi/androidsdk/impl/IMUserInfo;Landroid/view/MotionEvent;Ljava/util/List;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 66
    :try_start_1
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->getNewAdActionType()Ljava/lang/String;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->a:Lcom/inmobi/androidsdk/impl/IMAdUnit;

    .line 69
    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/IMAdUnit;->adActionNamefromString(Ljava/lang/String;)Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

    move-result-object v0

    .line 68
    invoke-virtual {v2, v0}, Lcom/inmobi/androidsdk/impl/IMAdUnit;->setAdActionName(Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 76
    :goto_0
    return-object v0

    .line 72
    :catch_0
    move-exception v0

    move-object v1, v5

    .line 73
    :goto_1
    const-string v2, "InMobiAndroidSDK_3.6.2"

    .line 74
    const-string v3, "Encountered generic exception initiating click"

    .line 73
    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 72
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->a(Ljava/lang/String;)V

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->d:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->d:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    goto :goto_0
.end method
