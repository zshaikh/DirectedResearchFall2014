.class final Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$1;
.super Ljava/lang/Object;
.source "LogBrokerMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

.field private final val$delay:I


# direct methods
.method constructor <init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;I)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$1;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    iput p2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$1;->val$delay:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 155
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 156
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$1;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    iget v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$1;->val$delay:I

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->pause(I)V

    .line 157
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$1;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    iget-object v0, v0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/awt/Window;->setVisible(Z)V

    .line 158
    return-void
.end method
