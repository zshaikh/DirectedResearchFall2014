.class final Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$4;
.super Ljava/lang/Object;
.source "LogBrokerMonitor.java"

# interfaces
.implements Lorg/apache/log4j/lf5/LogRecordFilter;


# instance fields
.field private final this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;


# direct methods
.method constructor <init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V
    .locals 0

    .prologue
    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$4;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    return-void
.end method


# virtual methods
.method public passes(Lorg/apache/log4j/lf5/LogRecord;)Z
    .locals 5
    .param p1, "record"    # Lorg/apache/log4j/lf5/LogRecord;

    .prologue
    const/4 v4, 0x0

    .line 597
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/LogRecord;->getNDC()Ljava/lang/String;

    move-result-object v0

    .line 598
    .local v0, "NDC":Ljava/lang/String;
    new-instance v1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/LogRecord;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;-><init>(Ljava/lang/String;)V

    .line 599
    .local v1, "path":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$4;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    iget-object v2, v2, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_NDCTextFilter:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    move v2, v4

    .line 604
    :goto_0
    return v2

    .line 601
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$4;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    iget-object v3, v3, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_NDCTextFilter:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    move v2, v4

    .line 602
    goto :goto_0

    .line 604
    :cond_2
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$4;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/LogRecord;->getLevel()Lorg/apache/log4j/lf5/LogLevel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getMenuItem(Lorg/apache/log4j/lf5/LogLevel;)Ljavax/swing/JCheckBoxMenuItem;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/swing/AbstractButton;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$4;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    iget-object v2, v2, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_categoryExplorerTree:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;

    invoke-virtual {v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->getExplorerModel()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->isCategoryPathActive(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_0
.end method
