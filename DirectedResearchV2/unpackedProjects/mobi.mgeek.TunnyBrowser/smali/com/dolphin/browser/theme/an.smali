.class Lcom/dolphin/browser/theme/an;
.super Ljava/lang/Object;
.source "ThemeInstaller.java"

# interfaces
.implements Lcom/dolphin/browser/theme/d/i;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/theme/ThemeInstaller;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/theme/ThemeInstaller;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/dolphin/browser/theme/an;->a:Lcom/dolphin/browser/theme/ThemeInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 113
    iget v0, p1, Landroid/os/Message;->what:I

    .line 114
    if-eq v0, v3, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/an;->a:Lcom/dolphin/browser/theme/ThemeInstaller;

    invoke-static {v0}, Lcom/dolphin/browser/theme/ThemeInstaller;->a(Lcom/dolphin/browser/theme/ThemeInstaller;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/theme/ThemeInstaller;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/dolphin/browser/theme/ThemeInstaller;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    :cond_1
    :goto_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 163
    :goto_1
    return-void

    .line 118
    :cond_2
    const/4 v0, 0x4

    iput v0, p1, Landroid/os/Message;->what:I

    goto :goto_0

    .line 123
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_3

    .line 124
    :cond_3
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v2, :cond_4

    .line 125
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/dolphin/browser/theme/b/a;

    .line 126
    invoke-virtual {v0, v3}, Lcom/dolphin/browser/theme/b/a;->a(I)V

    .line 128
    iget-object v1, p0, Lcom/dolphin/browser/theme/an;->a:Lcom/dolphin/browser/theme/ThemeInstaller;

    invoke-static {v1, v0}, Lcom/dolphin/browser/theme/ThemeInstaller;->b(Lcom/dolphin/browser/theme/ThemeInstaller;Lcom/dolphin/browser/theme/b/a;)Z

    goto :goto_1

    .line 133
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/dolphin/browser/theme/b/a;

    .line 134
    invoke-virtual {v0, v2}, Lcom/dolphin/browser/theme/b/a;->a(I)V

    .line 135
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/b/a;->a()V

    .line 136
    iget-object v1, p0, Lcom/dolphin/browser/theme/an;->a:Lcom/dolphin/browser/theme/ThemeInstaller;

    invoke-static {v1, v0}, Lcom/dolphin/browser/theme/ThemeInstaller;->c(Lcom/dolphin/browser/theme/ThemeInstaller;Lcom/dolphin/browser/theme/b/a;)V

    goto :goto_1

    .line 141
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/dolphin/browser/theme/b/a;

    .line 142
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/b/a;->a()V

    .line 143
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/b/a;->b()V

    .line 144
    const-string v1, "theme reminder"

    const-string v2, "apply"

    iget-object v3, p0, Lcom/dolphin/browser/theme/an;->a:Lcom/dolphin/browser/theme/ThemeInstaller;

    invoke-static {v3, v0}, Lcom/dolphin/browser/theme/ThemeInstaller;->a(Lcom/dolphin/browser/theme/ThemeInstaller;Lcom/dolphin/browser/theme/b/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/dolphin/browser/theme/an;->a:Lcom/dolphin/browser/theme/ThemeInstaller;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ThemeInstaller;->finish()V

    goto :goto_1

    .line 151
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/dolphin/browser/theme/b/a;

    .line 152
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/b/a;->a()V

    .line 153
    const-string v1, "theme reminder"

    const-string v2, "later"

    iget-object v3, p0, Lcom/dolphin/browser/theme/an;->a:Lcom/dolphin/browser/theme/ThemeInstaller;

    invoke-static {v3, v0}, Lcom/dolphin/browser/theme/ThemeInstaller;->a(Lcom/dolphin/browser/theme/ThemeInstaller;Lcom/dolphin/browser/theme/b/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/dolphin/browser/theme/an;->a:Lcom/dolphin/browser/theme/ThemeInstaller;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ThemeInstaller;->finish()V

    goto :goto_1

    .line 160
    :pswitch_4
    iget-object v0, p0, Lcom/dolphin/browser/theme/an;->a:Lcom/dolphin/browser/theme/ThemeInstaller;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ThemeInstaller;->finish()V

    goto :goto_1

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
