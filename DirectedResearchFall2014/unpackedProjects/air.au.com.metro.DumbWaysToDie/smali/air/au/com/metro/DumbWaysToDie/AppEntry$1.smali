.class Lair/au/com/metro/DumbWaysToDie/AppEntry$1;
.super Ljava/lang/Object;
.source "AppEntry.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lair/au/com/metro/DumbWaysToDie/AppEntry;->showDialog(ILjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lair/au/com/metro/DumbWaysToDie/AppEntry;


# direct methods
.method constructor <init>(Lair/au/com/metro/DumbWaysToDie/AppEntry;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lair/au/com/metro/DumbWaysToDie/AppEntry$1;->this$0:Lair/au/com/metro/DumbWaysToDie/AppEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 162
    iget-object v0, p0, Lair/au/com/metro/DumbWaysToDie/AppEntry$1;->this$0:Lair/au/com/metro/DumbWaysToDie/AppEntry;

    #calls: Lair/au/com/metro/DumbWaysToDie/AppEntry;->launchMarketPlaceForAIR()V
    invoke-static {v0}, Lair/au/com/metro/DumbWaysToDie/AppEntry;->access$000(Lair/au/com/metro/DumbWaysToDie/AppEntry;)V

    .line 163
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 164
    return-void
.end method
