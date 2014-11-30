.class public Lcom/dolphin/player/MainPlayActivity;
.super Landroid/app/Activity;
.source "MainPlayActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/ComponentName;

.field private f:Landroid/content/ComponentName;

.field private g:Landroid/content/BroadcastReceiver;

.field private h:Lcom/dolphin/player/VideoPlayerView;

.field private i:Ljava/util/Map;

.field private j:Lcom/dolphin/player/bo;

.field private final k:Lcom/dolphin/player/bl;

.field private l:Lcom/dolphin/player/a/f;

.field private m:Lcom/dolphin/player/bk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/player/MainPlayActivity;->h:Lcom/dolphin/player/VideoPlayerView;

    .line 221
    new-instance v0, Lcom/dolphin/player/s;

    invoke-direct {v0, p0}, Lcom/dolphin/player/s;-><init>(Lcom/dolphin/player/MainPlayActivity;)V

    iput-object v0, p0, Lcom/dolphin/player/MainPlayActivity;->j:Lcom/dolphin/player/bo;

    .line 230
    new-instance v0, Lcom/dolphin/player/t;

    invoke-direct {v0, p0}, Lcom/dolphin/player/t;-><init>(Lcom/dolphin/player/MainPlayActivity;)V

    iput-object v0, p0, Lcom/dolphin/player/MainPlayActivity;->k:Lcom/dolphin/player/bl;

    .line 238
    new-instance v0, Lcom/dolphin/player/u;

    invoke-direct {v0, p0}, Lcom/dolphin/player/u;-><init>(Lcom/dolphin/player/MainPlayActivity;)V

    iput-object v0, p0, Lcom/dolphin/player/MainPlayActivity;->l:Lcom/dolphin/player/a/f;

    .line 253
    new-instance v0, Lcom/dolphin/player/v;

    invoke-direct {v0, p0}, Lcom/dolphin/player/v;-><init>(Lcom/dolphin/player/MainPlayActivity;)V

    iput-object v0, p0, Lcom/dolphin/player/MainPlayActivity;->m:Lcom/dolphin/player/bk;

    return-void
.end method

.method static synthetic a(Lcom/dolphin/player/MainPlayActivity;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dolphin/player/MainPlayActivity;->i:Ljava/util/Map;

    return-object v0
.end method

.method private a(II)V
    .locals 3

    .prologue
    .line 295
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 297
    iget-object v1, p0, Lcom/dolphin/player/MainPlayActivity;->e:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 298
    const-string v1, "action.REPORT_ERROR_MSG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    const-string v1, "extra_content_id"

    iget-object v2, p0, Lcom/dolphin/player/MainPlayActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const-string v1, "extra_original_url"

    iget-object v2, p0, Lcom/dolphin/player/MainPlayActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    const-string v1, "extra_position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 303
    const-string v1, "extra_state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 305
    invoke-virtual {p0, v0}, Lcom/dolphin/player/MainPlayActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 306
    return-void
.end method

.method static synthetic a(Lcom/dolphin/player/MainPlayActivity;II)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/dolphin/player/MainPlayActivity;->a(II)V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dolphin/player/MainPlayActivity;->i:Ljava/util/Map;

    .line 203
    const-string v0, "playHistory"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 204
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/player/MainPlayActivity;->i:Ljava/util/Map;

    .line 205
    return-void
.end method

.method static synthetic b(Lcom/dolphin/player/MainPlayActivity;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/dolphin/player/MainPlayActivity;->c()V

    return-void
.end method

.method static synthetic c(Lcom/dolphin/player/MainPlayActivity;)Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dolphin/player/MainPlayActivity;->f:Landroid/content/ComponentName;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 208
    .line 210
    const-string v0, "playHistory"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 211
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 212
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 214
    iget-object v0, p0, Lcom/dolphin/player/MainPlayActivity;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/dolphin/player/MainPlayActivity;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 216
    check-cast v0, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 218
    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 219
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 166
    invoke-static {p0}, Lcom/dolphin/player/VideoPlayerView;->a(Landroid/content/Context;)V

    .line 167
    new-instance v0, Lcom/dolphin/player/VideoPlayerView;

    invoke-direct {v0, p0}, Lcom/dolphin/player/VideoPlayerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/player/MainPlayActivity;->h:Lcom/dolphin/player/VideoPlayerView;

    .line 169
    iget-object v0, p0, Lcom/dolphin/player/MainPlayActivity;->h:Lcom/dolphin/player/VideoPlayerView;

    invoke-virtual {v0, v1}, Lcom/dolphin/player/VideoPlayerView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/dolphin/player/MainPlayActivity;->h:Lcom/dolphin/player/VideoPlayerView;

    iget-object v2, p0, Lcom/dolphin/player/MainPlayActivity;->k:Lcom/dolphin/player/bl;

    invoke-virtual {v0, v2}, Lcom/dolphin/player/VideoPlayerView;->a(Lcom/dolphin/player/bl;)V

    .line 171
    iget-object v0, p0, Lcom/dolphin/player/MainPlayActivity;->h:Lcom/dolphin/player/VideoPlayerView;

    iget-object v2, p0, Lcom/dolphin/player/MainPlayActivity;->m:Lcom/dolphin/player/bk;

    invoke-virtual {v0, v2}, Lcom/dolphin/player/VideoPlayerView;->a(Lcom/dolphin/player/bk;)V

    .line 172
    iget-object v0, p0, Lcom/dolphin/player/MainPlayActivity;->h:Lcom/dolphin/player/VideoPlayerView;

    iget-object v2, p0, Lcom/dolphin/player/MainPlayActivity;->j:Lcom/dolphin/player/bo;

    invoke-virtual {v0, v2}, Lcom/dolphin/player/VideoPlayerView;->a(Lcom/dolphin/player/bo;)V

    .line 174
    invoke-static {}, Lcom/dolphin/player/a/e;->a()Lcom/dolphin/player/a/e;

    move-result-object v0

    iget-object v2, p0, Lcom/dolphin/player/MainPlayActivity;->l:Lcom/dolphin/player/a/f;

    invoke-virtual {v0, v2}, Lcom/dolphin/player/a/e;->a(Lcom/dolphin/player/a/f;)V

    .line 177
    iget-object v0, p0, Lcom/dolphin/player/MainPlayActivity;->i:Ljava/util/Map;

    iget-object v2, p0, Lcom/dolphin/player/MainPlayActivity;->d:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 178
    if-eqz v0, :cond_0

    .line 180
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 183
    :goto_0
    new-instance v1, Lcom/dolphin/player/bq;

    invoke-direct {v1}, Lcom/dolphin/player/bq;-><init>()V

    .line 184
    iget-object v2, p0, Lcom/dolphin/player/MainPlayActivity;->d:Ljava/lang/String;

    iput-object v2, v1, Lcom/dolphin/player/bq;->a:Ljava/lang/String;

    .line 185
    iget-object v2, p0, Lcom/dolphin/player/MainPlayActivity;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/dolphin/player/bq;->b:Ljava/lang/String;

    .line 186
    iget-object v2, p0, Lcom/dolphin/player/MainPlayActivity;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/dolphin/player/bq;->c:Ljava/lang/String;

    .line 187
    iget-object v2, p0, Lcom/dolphin/player/MainPlayActivity;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/dolphin/player/bq;->d:Ljava/lang/String;

    .line 188
    iput v0, v1, Lcom/dolphin/player/bq;->f:I

    .line 189
    iput-boolean v3, v1, Lcom/dolphin/player/bq;->h:Z

    .line 190
    iput-boolean v3, v1, Lcom/dolphin/player/bq;->g:Z

    .line 191
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/dolphin/player/bq;->e:Lcom/dolphin/player/aj;

    .line 192
    iget-object v0, p0, Lcom/dolphin/player/MainPlayActivity;->h:Lcom/dolphin/player/VideoPlayerView;

    invoke-virtual {v0, v1, v3}, Lcom/dolphin/player/VideoPlayerView;->a(Lcom/dolphin/player/bq;Z)V

    .line 194
    iget-object v0, p0, Lcom/dolphin/player/MainPlayActivity;->h:Lcom/dolphin/player/VideoPlayerView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/player/MainPlayActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/player/MainPlayActivity;->requestWindowFeature(I)Z

    .line 127
    invoke-virtual {p0}, Lcom/dolphin/player/MainPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 128
    sget v0, Lcom/dolphin/player/R$layout;->frame:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/MainPlayActivity;->setContentView(I)V

    .line 130
    invoke-virtual {p0}, Lcom/dolphin/player/MainPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 131
    const-string v0, "extra_content_id"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/player/MainPlayActivity;->a:Ljava/lang/String;

    .line 132
    const-string v0, "extra_title"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/player/MainPlayActivity;->b:Ljava/lang/String;

    .line 133
    const-string v0, "extra_original_url"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/player/MainPlayActivity;->c:Ljava/lang/String;

    .line 134
    const-string v0, "extra_url"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/player/MainPlayActivity;->d:Ljava/lang/String;

    .line 135
    const-string v0, "http://data.vod.itc.cn/?new=/140/186/Nfv7NIGcPiH4c5uIiEhPr5.mp4"

    iput-object v0, p0, Lcom/dolphin/player/MainPlayActivity;->d:Ljava/lang/String;

    .line 136
    const-string v0, "\u52a0\u52d2\u6bd4\u6d77\u76d7-\u6770\u514b\u8239\u957f\u5e26\u4f60\u4f53\u9a8c\u6df1\u6d77\u7684\u5965\u79d8"

    iput-object v0, p0, Lcom/dolphin/player/MainPlayActivity;->b:Ljava/lang/String;

    .line 137
    const-string v0, "extra_error_report_request_component"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/dolphin/player/MainPlayActivity;->e:Landroid/content/ComponentName;

    .line 138
    const-string v0, "extra_download_request_component"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/dolphin/player/MainPlayActivity;->f:Landroid/content/ComponentName;

    .line 139
    new-instance v0, Lcom/dolphin/player/q;

    invoke-direct {v0, p0}, Lcom/dolphin/player/q;-><init>(Lcom/dolphin/player/MainPlayActivity;)V

    iput-object v0, p0, Lcom/dolphin/player/MainPlayActivity;->g:Landroid/content/BroadcastReceiver;

    .line 152
    invoke-direct {p0}, Lcom/dolphin/player/MainPlayActivity;->b()V

    .line 154
    invoke-virtual {p0}, Lcom/dolphin/player/MainPlayActivity;->a()V

    .line 162
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/dolphin/player/MainPlayActivity;->h:Lcom/dolphin/player/VideoPlayerView;

    invoke-virtual {v0}, Lcom/dolphin/player/VideoPlayerView;->g()V

    .line 274
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 275
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/dolphin/player/MainPlayActivity;->h:Lcom/dolphin/player/VideoPlayerView;

    invoke-virtual {v0}, Lcom/dolphin/player/VideoPlayerView;->h()V

    .line 279
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 280
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/dolphin/player/MainPlayActivity;->h:Lcom/dolphin/player/VideoPlayerView;

    invoke-virtual {v0}, Lcom/dolphin/player/VideoPlayerView;->f()V

    .line 268
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 269
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/dolphin/player/MainPlayActivity;->h:Lcom/dolphin/player/VideoPlayerView;

    invoke-virtual {v0}, Lcom/dolphin/player/VideoPlayerView;->e()V

    .line 263
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 264
    return-void
.end method
