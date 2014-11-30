.class Lair/com/playtika/slotomania/AppEntry$1;
.super Ljava/lang/Object;
.source "AppEntry.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lair/com/playtika/slotomania/AppEntry;->showDialog(ILjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lair/com/playtika/slotomania/AppEntry;


# direct methods
.method constructor <init>(Lair/com/playtika/slotomania/AppEntry;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lair/com/playtika/slotomania/AppEntry$1;->this$0:Lair/com/playtika/slotomania/AppEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lair/com/playtika/slotomania/AppEntry$1;->this$0:Lair/com/playtika/slotomania/AppEntry;

    # invokes: Lair/com/playtika/slotomania/AppEntry;->launchMarketPlaceForAIR()V
    invoke-static {v0}, Lair/com/playtika/slotomania/AppEntry;->access$000(Lair/com/playtika/slotomania/AppEntry;)V

    .line 163
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 164
    return-void
.end method
