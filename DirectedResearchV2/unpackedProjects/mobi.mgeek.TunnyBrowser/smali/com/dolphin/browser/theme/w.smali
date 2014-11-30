.class Lcom/dolphin/browser/theme/w;
.super Ljava/lang/Object;
.source "ThemeActivity2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/dolphin/browser/theme/data/a;

.field final synthetic c:Lcom/dolphin/browser/theme/ThemeActivity2;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/theme/ThemeActivity2;ILcom/dolphin/browser/theme/data/a;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/dolphin/browser/theme/w;->c:Lcom/dolphin/browser/theme/ThemeActivity2;

    iput p2, p0, Lcom/dolphin/browser/theme/w;->a:I

    iput-object p3, p0, Lcom/dolphin/browser/theme/w;->b:Lcom/dolphin/browser/theme/data/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 190
    iget v0, p0, Lcom/dolphin/browser/theme/w;->a:I

    packed-switch v0, :pswitch_data_0

    .line 203
    :goto_0
    return-void

    .line 192
    :pswitch_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/w;->c:Lcom/dolphin/browser/theme/ThemeActivity2;

    invoke-static {v0}, Lcom/dolphin/browser/theme/ThemeActivity2;->a(Lcom/dolphin/browser/theme/ThemeActivity2;)V

    goto :goto_0

    .line 195
    :pswitch_1
    iget-object v0, p0, Lcom/dolphin/browser/theme/w;->c:Lcom/dolphin/browser/theme/ThemeActivity2;

    iget-object v1, p0, Lcom/dolphin/browser/theme/w;->b:Lcom/dolphin/browser/theme/data/a;

    invoke-static {v0, v1}, Lcom/dolphin/browser/theme/ThemeActivity2;->a(Lcom/dolphin/browser/theme/ThemeActivity2;Lcom/dolphin/browser/theme/data/a;)V

    goto :goto_0

    .line 198
    :pswitch_2
    iget-object v0, p0, Lcom/dolphin/browser/theme/w;->c:Lcom/dolphin/browser/theme/ThemeActivity2;

    iget-object v1, p0, Lcom/dolphin/browser/theme/w;->b:Lcom/dolphin/browser/theme/data/a;

    invoke-static {v0, v1}, Lcom/dolphin/browser/theme/ThemeActivity2;->b(Lcom/dolphin/browser/theme/ThemeActivity2;Lcom/dolphin/browser/theme/data/a;)V

    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
