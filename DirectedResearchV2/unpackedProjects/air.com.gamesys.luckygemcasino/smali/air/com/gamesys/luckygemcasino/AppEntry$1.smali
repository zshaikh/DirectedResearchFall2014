.class Lair/com/gamesys/luckygemcasino/AppEntry$1;
.super Ljava/lang/Object;
.source "AppEntry.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lair/com/gamesys/luckygemcasino/AppEntry;->showDialog(ILjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lair/com/gamesys/luckygemcasino/AppEntry;


# direct methods
.method constructor <init>(Lair/com/gamesys/luckygemcasino/AppEntry;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lair/com/gamesys/luckygemcasino/AppEntry$1;->this$0:Lair/com/gamesys/luckygemcasino/AppEntry;

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
    iget-object v0, p0, Lair/com/gamesys/luckygemcasino/AppEntry$1;->this$0:Lair/com/gamesys/luckygemcasino/AppEntry;

    # invokes: Lair/com/gamesys/luckygemcasino/AppEntry;->launchMarketPlaceForAIR()V
    invoke-static {v0}, Lair/com/gamesys/luckygemcasino/AppEntry;->access$000(Lair/com/gamesys/luckygemcasino/AppEntry;)V

    .line 163
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 164
    return-void
.end method
