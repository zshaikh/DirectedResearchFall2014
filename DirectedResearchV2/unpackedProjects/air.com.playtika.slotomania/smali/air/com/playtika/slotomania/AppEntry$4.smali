.class Lair/com/playtika/slotomania/AppEntry$4;
.super Ljava/lang/Object;
.source "AppEntry.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lair/com/playtika/slotomania/AppEntry;->launchAIRService()V
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
    .line 276
    iput-object p1, p0, Lair/com/playtika/slotomania/AppEntry$4;->this$0:Lair/com/playtika/slotomania/AppEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 282
    iget-object v0, p0, Lair/com/playtika/slotomania/AppEntry$4;->this$0:Lair/com/playtika/slotomania/AppEntry;

    invoke-virtual {v0, p0}, Lair/com/playtika/slotomania/AppEntry;->unbindService(Landroid/content/ServiceConnection;)V

    .line 285
    iget-object v0, p0, Lair/com/playtika/slotomania/AppEntry$4;->this$0:Lair/com/playtika/slotomania/AppEntry;

    # invokes: Lair/com/playtika/slotomania/AppEntry;->loadSharedRuntimeDex()V
    invoke-static {v0}, Lair/com/playtika/slotomania/AppEntry;->access$100(Lair/com/playtika/slotomania/AppEntry;)V

    .line 286
    iget-object v0, p0, Lair/com/playtika/slotomania/AppEntry$4;->this$0:Lair/com/playtika/slotomania/AppEntry;

    const/4 v1, 0x0

    # invokes: Lair/com/playtika/slotomania/AppEntry;->createActivityWrapper(Z)V
    invoke-static {v0, v1}, Lair/com/playtika/slotomania/AppEntry;->access$200(Lair/com/playtika/slotomania/AppEntry;Z)V

    .line 288
    # getter for: Lair/com/playtika/slotomania/AppEntry;->sRuntimeClassesLoaded:Z
    invoke-static {}, Lair/com/playtika/slotomania/AppEntry;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lair/com/playtika/slotomania/AppEntry$4;->this$0:Lair/com/playtika/slotomania/AppEntry;

    # invokes: Lair/com/playtika/slotomania/AppEntry;->InvokeWrapperOnCreate()V
    invoke-static {v0}, Lair/com/playtika/slotomania/AppEntry;->access$400(Lair/com/playtika/slotomania/AppEntry;)V

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    # invokes: Lair/com/playtika/slotomania/AppEntry;->KillSelf()V
    invoke-static {}, Lair/com/playtika/slotomania/AppEntry;->access$500()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 302
    return-void
.end method
