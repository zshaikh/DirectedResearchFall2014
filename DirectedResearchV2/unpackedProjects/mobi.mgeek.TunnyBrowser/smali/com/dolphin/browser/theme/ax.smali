.class Lcom/dolphin/browser/theme/ax;
.super Ljava/lang/Object;
.source "ThemeManager.java"

# interfaces
.implements Lcom/dolphin/browser/theme/d/i;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dolphin/browser/theme/ar;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/theme/ar;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1315
    iput-object p1, p0, Lcom/dolphin/browser/theme/ax;->b:Lcom/dolphin/browser/theme/ar;

    iput-object p2, p0, Lcom/dolphin/browser/theme/ax;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 1318
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1346
    :goto_0
    :pswitch_0
    return-void

    .line 1321
    :pswitch_1
    iget-object v0, p0, Lcom/dolphin/browser/theme/ax;->b:Lcom/dolphin/browser/theme/ar;

    iget-object v1, p0, Lcom/dolphin/browser/theme/ax;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/dolphin/browser/theme/ar;->a(Lcom/dolphin/browser/theme/ar;Ljava/lang/String;)V

    goto :goto_0

    .line 1325
    :pswitch_2
    iget-object v0, p0, Lcom/dolphin/browser/theme/ax;->b:Lcom/dolphin/browser/theme/ar;

    iget-object v1, p0, Lcom/dolphin/browser/theme/ax;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/dolphin/browser/theme/ar;->b(Lcom/dolphin/browser/theme/ar;Ljava/lang/String;)V

    goto :goto_0

    .line 1329
    :pswitch_3
    iget-object v1, p0, Lcom/dolphin/browser/theme/ax;->b:Lcom/dolphin/browser/theme/ar;

    iget-object v2, p0, Lcom/dolphin/browser/theme/ax;->a:Ljava/lang/String;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/dolphin/browser/theme/d/j;

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/theme/ar;->a(Lcom/dolphin/browser/theme/ar;Ljava/lang/String;Lcom/dolphin/browser/theme/d/j;)V

    goto :goto_0

    .line 1333
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/dolphin/browser/theme/b/a;

    .line 1334
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/b/a;->a()V

    .line 1335
    iget-object v0, p0, Lcom/dolphin/browser/theme/ax;->b:Lcom/dolphin/browser/theme/ar;

    iget-object v1, p0, Lcom/dolphin/browser/theme/ax;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/dolphin/browser/theme/ar;->b(Lcom/dolphin/browser/theme/ar;Ljava/lang/String;)V

    goto :goto_0

    .line 1339
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/dolphin/browser/theme/b/a;

    .line 1340
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/b/a;->a()V

    .line 1341
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/b/a;->b()V

    .line 1342
    iget-object v0, p0, Lcom/dolphin/browser/theme/ax;->b:Lcom/dolphin/browser/theme/ar;

    iget-object v1, p0, Lcom/dolphin/browser/theme/ax;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/dolphin/browser/theme/ar;->b(Lcom/dolphin/browser/theme/ar;Ljava/lang/String;)V

    goto :goto_0

    .line 1318
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
