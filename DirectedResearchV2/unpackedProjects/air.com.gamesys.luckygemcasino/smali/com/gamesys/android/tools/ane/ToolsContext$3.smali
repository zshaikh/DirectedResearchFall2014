.class Lcom/gamesys/android/tools/ane/ToolsContext$3;
.super Ljava/lang/Object;
.source "ToolsContext.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamesys/android/tools/ane/ToolsContext;->showRatingDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamesys/android/tools/ane/ToolsContext;


# direct methods
.method constructor <init>(Lcom/gamesys/android/tools/ane/ToolsContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamesys/android/tools/ane/ToolsContext$3;->this$0:Lcom/gamesys/android/tools/ane/ToolsContext;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 178
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 179
    iget-object v0, p0, Lcom/gamesys/android/tools/ane/ToolsContext$3;->this$0:Lcom/gamesys/android/tools/ane/ToolsContext;

    const v1, 0x3fffffff

    invoke-virtual {v0, v1}, Lcom/gamesys/android/tools/ane/ToolsContext;->saveRatingCount(I)V

    .line 180
    return-void
.end method
