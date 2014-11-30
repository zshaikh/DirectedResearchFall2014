.class Lcom/dolphin/browser/vg/ui/e;
.super Landroid/os/Handler;
.source "VoicePannelView.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/vg/ui/VoicePannelView;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/vg/ui/VoicePannelView;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/dolphin/browser/vg/ui/e;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/e;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    invoke-static {v0, p1}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a(Lcom/dolphin/browser/vg/ui/VoicePannelView;Ljava/lang/String;)I

    move-result v0

    .line 300
    if-gez v0, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    const/16 v1, 0x65

    if-ne v1, v0, :cond_2

    .line 304
    invoke-direct {p0, p1}, Lcom/dolphin/browser/vg/ui/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-static {v0}, Lcom/dolphin/browser/search/e/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "blank"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    invoke-static {}, Lcom/dolphin/browser/search/e/a;->a()Lcom/dolphin/browser/search/e/a;

    move-result-object v0

    const-string v1, "sonar"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/search/e/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :cond_2
    const/16 v1, 0x66

    if-ne v1, v0, :cond_0

    .line 310
    invoke-static {}, Lcom/dolphin/browser/search/e/a;->a()Lcom/dolphin/browser/search/e/a;

    move-result-object v0

    const-string v1, "sonar"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/search/e/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 317
    const-string v0, ""

    .line 318
    const-string v1, "args\":\"(.*)\""

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 319
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 320
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 323
    :cond_0
    const-string v1, "\\/\\/"

    const-string v2, "//"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 324
    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 233
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 234
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/dolphin/browser/voice/command/i;

    .line 235
    instance-of v1, v0, Lcom/dolphin/browser/voice/command/b;

    if-eqz v1, :cond_3

    .line 236
    iget-object v1, p0, Lcom/dolphin/browser/vg/ui/e;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a(Lcom/dolphin/browser/vg/ui/VoicePannelView;Ljava/lang/CharSequence;)V

    .line 237
    check-cast v0, Lcom/dolphin/browser/voice/command/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/voice/command/b;->o_()I

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    .line 239
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/e;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    invoke-static {v0, v3}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a(Lcom/dolphin/browser/vg/ui/VoicePannelView;Z)Z

    .line 240
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/e;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->b(I)V

    .line 241
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/e;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e067e

    invoke-static {v0, v1}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a(Lcom/dolphin/browser/vg/ui/VoicePannelView;I)V

    .line 242
    const-string v0, "Sonar"

    const-string v1, "Error"

    const-string v2, "network_error"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/e;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->b(Lcom/dolphin/browser/vg/ui/VoicePannelView;)V

    .line 245
    invoke-static {}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->g()I

    move-result v0

    if-lt v0, v3, :cond_2

    .line 246
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/e;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->c(Lcom/dolphin/browser/vg/ui/VoicePannelView;)V

    .line 249
    :goto_1
    const-string v0, "Sonar"

    const-string v1, "Error"

    const-string v2, "3rd_unservice"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/e;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->d(Lcom/dolphin/browser/vg/ui/VoicePannelView;)V

    goto :goto_1

    .line 251
    :cond_3
    if-nez v0, :cond_5

    .line 252
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/e;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->b(Lcom/dolphin/browser/vg/ui/VoicePannelView;)V

    .line 253
    invoke-static {}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->g()I

    move-result v0

    if-lt v0, v3, :cond_4

    .line 254
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/e;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->c(Lcom/dolphin/browser/vg/ui/VoicePannelView;)V

    .line 257
    :goto_2
    const-string v0, "Sonar"

    const-string v1, "Error"

    const-string v2, "ourserver_unservice"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/e;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->d(Lcom/dolphin/browser/vg/ui/VoicePannelView;)V

    goto :goto_2

    .line 259
    :cond_5
    invoke-static {v4}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a(I)V

    .line 260
    invoke-virtual {v0}, Lcom/dolphin/browser/voice/command/i;->c()Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-direct {p0, v1}, Lcom/dolphin/browser/vg/ui/e;->a(Ljava/lang/String;)V

    .line 262
    iget-object v2, p0, Lcom/dolphin/browser/vg/ui/e;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    invoke-static {v2, v1}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a(Lcom/dolphin/browser/vg/ui/VoicePannelView;Ljava/lang/String;)I

    move-result v1

    .line 263
    iget-object v2, p0, Lcom/dolphin/browser/vg/ui/e;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    invoke-static {v2, v1}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->b(Lcom/dolphin/browser/vg/ui/VoicePannelView;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 264
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/e;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->b(Lcom/dolphin/browser/vg/ui/VoicePannelView;)V

    .line 265
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/e;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->b(I)V

    .line 266
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/e;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0671

    invoke-static {v0, v1}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a(Lcom/dolphin/browser/vg/ui/VoicePannelView;I)V

    goto :goto_0

    .line 268
    :cond_6
    iget-object v2, p0, Lcom/dolphin/browser/vg/ui/e;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    invoke-static {v2, v1}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->c(Lcom/dolphin/browser/vg/ui/VoicePannelView;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 269
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/e;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->b(Lcom/dolphin/browser/vg/ui/VoicePannelView;)V

    .line 270
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/e;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->b(I)V

    .line 271
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/e;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0673

    invoke-static {v0, v1}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a(Lcom/dolphin/browser/vg/ui/VoicePannelView;I)V

    goto/16 :goto_0

    .line 273
    :cond_7
    iget-object v1, p0, Lcom/dolphin/browser/vg/ui/e;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    invoke-virtual {v0}, Lcom/dolphin/browser/voice/command/i;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->b(Lcom/dolphin/browser/vg/ui/VoicePannelView;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 274
    iget-object v1, p0, Lcom/dolphin/browser/vg/ui/e;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    invoke-static {v1}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->b(Lcom/dolphin/browser/vg/ui/VoicePannelView;)V

    .line 275
    iget-object v1, p0, Lcom/dolphin/browser/vg/ui/e;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->b(I)V

    .line 276
    iget-object v1, p0, Lcom/dolphin/browser/vg/ui/e;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e067d

    invoke-virtual {v0}, Lcom/dolphin/browser/voice/command/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0, v3}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a(Lcom/dolphin/browser/vg/ui/VoicePannelView;ILjava/lang/String;Z)V

    goto/16 :goto_0

    .line 277
    :cond_8
    invoke-virtual {v0}, Lcom/dolphin/browser/voice/command/i;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 278
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/e;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a(Z)V

    .line 279
    const-string v0, "Sonar"

    const-string v1, "Request"

    const-string v2, "success"

    sget-object v3, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V

    .line 280
    const-string v0, "Sonar"

    const-string v1, "duration"

    const-string v2, "all"

    sget-object v3, Lcom/dolphin/browser/util/Tracker$Priority;->Normal:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackDuration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V

    goto/16 :goto_0

    .line 282
    :cond_9
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/e;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->b(Lcom/dolphin/browser/vg/ui/VoicePannelView;)V

    .line 283
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/e;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->b(I)V

    .line 284
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/e;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0680

    invoke-static {v0, v1}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a(Lcom/dolphin/browser/vg/ui/VoicePannelView;I)V

    goto/16 :goto_0

    .line 287
    :cond_a
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_b

    .line 288
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/e;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->e(Lcom/dolphin/browser/vg/ui/VoicePannelView;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 289
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/e;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0674

    invoke-static {v0, v1}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->d(Lcom/dolphin/browser/vg/ui/VoicePannelView;I)V

    goto/16 :goto_0

    .line 291
    :cond_b
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 292
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/e;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->b(I)V

    goto/16 :goto_0
.end method
