package com.drdisagree.colorblendr.service;

import android.content.om.OverlayIdentifier;
import com.drdisagree.colorblendr.extension.MethodInterface;
import com.drdisagree.colorblendr.service.ISystemUIRestartListener;
import com.drdisagree.colorblendr.utils.fabricated.FabricatedOverlayResource;

interface IRootService {
    boolean isRooted();
    void setupSystemUIRestartListener();
    void runOnSystemUIRestarted(in MethodInterface method);
    boolean isOverlayInstalled(String packageName);
    boolean isOverlayEnabled(String packageName);
    void enableOverlay(in List<String> packages);
    void enableOverlayWithIdentifier(in List<String> packages);
    boolean enableOverlayExclusive(in String packageName);
    boolean enableOverlayExclusiveInCategory(in String packageName);
    void disableOverlay(in List<String> packages);
    void disableOverlayWithIdentifier(in List<String> packages);
    void registerFabricatedOverlay(in FabricatedOverlayResource fabricatedOverlay);
    void unregisterFabricatedOverlay(in String packageName);
    boolean setHighestPriority(String packageName);
    boolean setLowestPriority(String packageName);
    OverlayIdentifier generateOverlayIdentifier(String packageName);
    void invalidateCachesForOverlay(String packageName);
    void uninstallOverlayUpdates(String packageName);
    void restartSystemUI();
    String[] runCommand(in List<String> command);
    void runWithRoot(in MethodInterface method);
}