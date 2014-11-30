.class Lcom/dolphin/browser/gesture/ui/f;
.super Ljava/lang/Object;
.source "GestureCreateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/f;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    .prologue
    .line 213
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/f;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->c(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Lcom/dolphin/browser/gesture/Gesture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/f;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->d(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Lcom/dolphin/browser/gesture/i;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/f;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-static {v1}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->c(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Lcom/dolphin/browser/gesture/Gesture;

    move-result-object v1

    const v2, 0x3f59999a

    const v3, 0x3f333333

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/gesture/i;->a(Lcom/dolphin/browser/gesture/Gesture;FF)Ljava/lang/String;

    move-result-object v8

    .line 217
    if-eqz v8, :cond_2

    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/f;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->e(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/f;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->f(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Lcom/dolphin/browser/gesture/a;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/dolphin/browser/gesture/a;->a(Ljava/lang/String;)Lcom/dolphin/browser/gesture/a/a;

    move-result-object v9

    .line 219
    if-nez v9, :cond_1

    .line 222
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/f;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->d(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Lcom/dolphin/browser/gesture/i;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/dolphin/browser/gesture/i;->c(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/f;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->a()V

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/f;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    .line 228
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 230
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e063a

    invoke-virtual {v10, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 231
    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f030087

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 232
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080243

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    .line 233
    sget-object v0, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v0, 0x7f0a0062

    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v4

    .line 234
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/f;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->d(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Lcom/dolphin/browser/gesture/i;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/dolphin/browser/gesture/i;->a(Ljava/lang/String;)Lcom/dolphin/browser/gesture/Gesture;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->b()I

    move-result v1

    invoke-static {}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->b()I

    move-result v2

    invoke-static {}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->c()I

    move-result v3

    const/high16 v5, 0x40000000

    const/16 v6, 0x14

    invoke-virtual/range {v0 .. v6}, Lcom/dolphin/browser/gesture/Gesture;->a(IIIIFI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 237
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 238
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080244

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 239
    invoke-virtual {v9}, Lcom/dolphin/browser/gesture/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 241
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e03db

    new-instance v1, Lcom/dolphin/browser/gesture/ui/g;

    invoke-direct {v1, p0, v8}, Lcom/dolphin/browser/gesture/ui/g;-><init>(Lcom/dolphin/browser/gesture/ui/f;Ljava/lang/String;)V

    invoke-virtual {v10, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 251
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e050c

    new-instance v1, Lcom/dolphin/browser/gesture/ui/h;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/gesture/ui/h;-><init>(Lcom/dolphin/browser/gesture/ui/f;)V

    invoke-virtual {v10, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 262
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 264
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/f;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->a()V

    goto/16 :goto_0
.end method
